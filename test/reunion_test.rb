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

  def test_reunion_has_activities
    hiking  = Activity.new('hiking')
    archery = Activity.new('archery')
    reunion = Reunion.new('Aspen', [hiking, archery])

    assert_instance_of Array, reunion.activities
    assert_instance_of Activity, reunion.activities[0]
  end

  def test_activities_can_be_added_to_reunion
    hiking  = Activity.new('hiking')
    archery = Activity.new('archery')
    reunion = Reunion.new('Aspen', [hiking, archery])

    reunion.add_activity('biking')

  end
end
