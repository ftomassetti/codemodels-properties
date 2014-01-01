require "test_helper"
 
class TestParsing < Test::Unit::TestCase

  include TestHelper
  include CodeModels::Properties

  def setup
    @dir = File.dirname(__FILE__)+'/data'
  	@example1 = CodeModels.parse_file(@dir+'/example1.properties')
  end

  def test_basic
    assert_class PropertiesFile, @example1
    assert_equal 2, @example1.properties.count

    assert_class Property, @example1.properties[0]
    assert_equal 'a', @example1.properties[0].name
    assert_equal ' ciao', @example1.properties[0].value

    assert_class Property, @example1.properties[1]
    assert_equal 'b', @example1.properties[1].name
    assert_equal 'mondo', @example1.properties[1].value    
  end
 
end