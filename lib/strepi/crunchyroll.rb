module Strepi
  module Services
    class Crunchyroll               #very similar to hulu probably, should finish this
      def initialize(options={})
        @endpoint_url = "http://www.crunchyroll.com"
        @ignore_media = []
        
      end

      def search(title)
        
        new_title = title.gsub(/[^a-z0-9\s]/i, '').gsub(' ', '-') #new title foormat to be inserted into URL for crunchyroll, takes away all non-alphanumeric character and then replaces spaces with dashes

        titles = []
        page_request = Net::HTTP.get_response(URI.parse("#{@endpoint_url}/#{new_title}")) #Anime series not on crunchyroll will not follow this format
        if page_request.code != "200"
          nil
        else
        
        titles << "#{title} is on Crunchyroll!"
        end


        titles
      end

      

        
    end
  end
end