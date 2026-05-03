---
layout: post
type: blog
title: <center>You Don't Need More H100s: Understanding PagedAttention</center>
comments: true
mathjax: true
---

## Introduction

"We are hitting OOM errors under load. We need to buy more H100s."

This is the default reflex for many engineering teams scaling Large Language Models (LLMs). But in the vast majority of cases, throwing more silicon at the problem is a wildly expensive mistake. You don't need more GPUs; you need a better mental model for how GPU memory actually works during inference.

Most teams routinely see north of 50% of their incredibly expensive VRAM go to waste. Why? Because they treat GPU memory like a physical, rigid bucket. 

To optimize LLM inference, we must stop treating memory as physical and start treating it as virtual.

## The Old Mental Model: The Swiss Cheese Problem

As discussed in my previous post on the KV Cache, generating tokens autoregressively requires caching previous states. 

The traditional serving frameworks (like native PyTorch or early versions of HuggingFace Accelerate) force the system to pre-allocate one large, contiguous chunk of GPU memory per request. Because the system cannot predict exactly how many tokens the LLM will generate, it must assume the worst-case scenario and over-allocate to the maximum sequence length.

The result is severe memory fragmentation. Your VRAM looks like Swiss Cheese. A request might reserve 2GB of memory but only use 100MB. The remaining 1.9GB is locked. You will hit Out-Of-Memory (OOM) crashes even when 60% of your total GPU memory is technically "empty." 

## The Breakthrough: PagedAttention

The solution is an elegant concept borrowed directly from classic operating systems design: **PagedAttention**.

PagedAttention, the core innovation behind the highly popular **vLLM** serving engine, fixes this fragmentation by decoupling physical memory from logical memory.

Instead of demanding contiguous blocks, PagedAttention breaks the KV cache down into small, fixed-size pages (e.g., blocks that hold the KV vectors for exactly 16 tokens). These pages are entirely non-contiguous. They can be scattered anywhere across the physical VRAM. 

A central "Block Table" acts as the logical mapping, stitching these scattered pages together at runtime when the attention mechanism needs to access them. 

The result? You use the exact same amount of data, but with near-zero internal fragmentation. You suddenly have the VRAM to serve exponentially more concurrent users.

## Unlocking Continuous Batching

The true magic of PagedAttention isn't just fitting more data into memory; it is how it changes the scheduling of requests.

Because memory is no longer locked in massive, contiguous blocks, PagedAttention unlocks **Continuous Batching** (also known as iteration-level scheduling):

1.  **Dynamic Insertion:** When a request finishes generating its final token, its individual memory pages are freed *instantly*.
2.  **Zero Wait Time:** A new request from the queue can be inserted into the active batch immediately, occupying those newly freed pages.
3.  **Maximum Utilization:** The GPU cores no longer wait for the longest request in a static batch to finish. They stay at near 100% utilization, processing a constant, flowing stream of tokens.

## Conclusion

By simply changing the logical mapping of physical silicon, PagedAttention and engines like vLLM can easily yield a 2x to 3x increase in inference throughput compared to naive implementations. 

Before you beg your CFO for another million dollars in compute budget, ensure you are utilizing the compute you already have. Optimize your memory management first.
