module Strepi
  class Client

    VALID_SERVICES = [:amazon,:hulu,:itunes,:netflix]
    SERVICE_MAP = {
      :amazon => Strepi::Services::AmazonEcs,
      :hulu => Strepi::Services::Hulu,
      :itunes => Strepi::Services::ITunes,
      :netflix => Strepi::Services::Netflix,
      :crunchyroll => Strepi::Services::Crunchyroll

    }
    IGNORE_MEDIA = [:clips, :trailers]

    attr_accessor :services, :ignore, :ecs_credentials

    # Arguments (all are optional):
    # - :services        - One or more of :amazon, :netflix, :hulu, or :itunes. Default is :all
    def initialize(options={})
      self.services = options[:services] || VALID_SERVICES
      self.ignore = options[:ignore] ? IGNORE_MEDIA & options[:ignore] : IGNORE_MEDIA
      self.ecs_credentials = options[:ecs_credentials]
    end

    # Search for a movie/tv show by title
    def search(title)
      results = {}
      self.services.each do |service|
        s = SERVICE_MAP[service].new(:ignore => ignore, :ecs_credentials => ecs_credentials)
        results[service] = s.search(title) #each search goes into results hash!!!
      end

      results
    end
  end
end