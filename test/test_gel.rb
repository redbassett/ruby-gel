require_relative '../lib/gel'
require 'test/unit'

class TestGel < Test::Unit::TestCase
  def test_gels_returns_array_of_gels
    assert_instance_of Array, Gel::gels
    [:code, :name, :rgb].each do |key|
      assert Gel::gels[0].key? key
      if key == :rgb
        [:red, :green, :blue].each do |color|
          assert Gel::gels[0][key].key? color
        end
      end
    end
  end
  
  def test_gels_returns_specific_gels
    assert Gel::gels('r00')[:name] == 'Dempster Open'
    assert_equal 2, Gel::gels('r00', 'R01').length
  end
  
  def test_rgb_returns_colors
    assert_equal({ red: 255, blue: 255, green: 255 }, Gel::rgb('r00'))
  end
  
  def test_name_return_name
    assert_equal 'Dempster Open', Gel::name('r00')
  end
end
