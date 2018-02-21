require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_it_has_name
    activity = Activity.new('hiking')

    assert_instance_of Activity, activity
    assert_equal 'hiking', activity.name
  end

  def test_activity_has_participants
    activity = Activity.new('hiking',15,{"George" => 5,
      "John" => 5, "Daria" => 5})

    assert_equal 5, activity.participants["John"]
    assert_equal 3, activity.participants.count
  end

  def test_can_add_participants_to_activity
    activity = Activity.new('hiking',15,{"George" => 5,
      "John" => 5, "Daria" => 5})

    activity.add_participant("David", 5)

    assert_equal 5, activity.participants["David"]
    assert_equal 4, activity.participants.count
  end

  def test_total_cost_of_activity
    activity = Activity.new('hiking',20,{"George" => 5,
      "John" => 5, "Daria" => 5})

    activity.add_participant("David", 5)

    assert_equal 20, activity.total_cost
  end

  def test_split_cost_of_activity
    activity = Activity.new('hiking',20 ,{"George" => 5,
      "John" => 5, "Daria" => 5})

    activity.add_participant("David", 5)

    cost_per_person = activity.cost_per_person

    assert_equal 5, activity.cost_per_person
    assert_equal 4, activity.participants.count

  end
# I am having trouble with this part - it is not deducting the owed amount. 
  def test_how_much_each_person_owes
    activity = Activity.new('hiking',20 ,{"George" => 5,
      "John" => 5, "Daria" => 5})

    activity.add_participant("David", 5)

    owed = activity.person_owes

    assert_equal 0, owed[1]["John"]
    assert_equal 0, owed[0]["George"]
  end
end
