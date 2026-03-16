require 'open-uri'
require 'nokogiri'

module Jekyll
  class ScholarStats < Generator
    SCHOLAR_ID = 'nURar74AAAAJ'.freeze
    SCHOLAR_URL = 'https://scholar.google.com/citations?hl=en&user='.freeze
    
    def generate(site)
      begin
        # Google Scholar requires a User-Agent to avoid 403 Forbidden
        user_agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
        doc = Nokogiri::HTML(URI.open(SCHOLAR_URL + SCHOLAR_ID, 'User-Agent' => user_agent))
        
        tbl = doc.css('table').first
        if tbl
          tbl_data = { 'id' => SCHOLAR_ID }
          tbl.css('tr')[1..].each do |tr|
            cell_data = tr.css('td').map(&:text)
            if cell_data.length >= 2
              key = cell_data[0].downcase.sub('-', '_')
              tbl_data[key] = cell_data[1].to_i
            end
          end
          site.data['scholar'] = tbl_data
        end
      rescue => e
        Jekyll.logger.warn "ScholarStats:", "Could not fetch stats from Google Scholar: #{e.message}"
        # Provide fallback data so the site still builds
        site.data['scholar'] ||= { 'id' => SCHOLAR_ID, 'citations' => 1146, 'h_index' => 12, 'i10_index' => 13 }
      end
    end
  end
end
