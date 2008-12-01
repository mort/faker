module Faker
  class Geo
    class << self
      def latitude
         random_coordinate(90)
      end
      
      def longitude
         random_coordinate(180)
      end
      
      def lat_lng
        [latitude, longitude]
      end
      
      private
      def random_coordinate(max)
         format("%.5f", (Kernel.rand(max) + Kernel.rand()) * Float(-1)**Kernel.rand(10))
      end
    end
  end  
end