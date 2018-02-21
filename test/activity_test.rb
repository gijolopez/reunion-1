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

  def test_activity_has_participants
    activity = Activity.new('hiking',12,{"George" =>3,
      "John" =>2, "Daria" =>0})

    assert_equal 2, activity.participants["John"]
  end
end
