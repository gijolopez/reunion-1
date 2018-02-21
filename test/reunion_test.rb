require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_has_a_location
    reunion = Reunion.new("Aspen")

    assert_instance_of Reunion, reunion
    assert_equal "Aspen", reunion.location
  end
end
