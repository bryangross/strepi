module Strepi
  module Services
    class Netflix

      def initialize(options={})
        
        
      end

      def search(title)
         #BRYAN FIND OUT HOW TO SEARCH FOR MOVIES USING NETFLIX ROULETTE!!!!

        titles = []

        
          if NetflixRoulette.get_media_poster(title) == "Unable to locate data"
              nil
            else
              titles << "#{title} is Available!"
            end


        
      

        titles
      end


    end
  end
end