require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerGeo < Test::Unit::TestCase

  def setup
    @tester = Faker::Geo
  end
  
  def test_latitude
    assert coordinate_valid_format?(Faker::Geo.latitude)
  end
  
  def test_longitude
    assert coordinate_valid_format?(Faker::Geo.longitude)
  end
  
  def test_lat_lng_should_be_an_array
    assert Faker::Geo.lat_lng.class.to_s == 'Array'
  end
  
  def test_lat_lng_should_have_two_items
    assert Faker::Geo.lat_lng.size == 2
  end
  
  def coordinate_valid_format?(coordinate)
    return coordinate.match(/[-]?[\d]{0,2}[.]\d{0,4}/).nil? ? false : true  
  end
  
end
