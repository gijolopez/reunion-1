require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_has_name
    activity = Activity.new('hiking')

    assert_instance_of Activity, activity
    assert_equal 'hiking', activity.name 
  end
end
