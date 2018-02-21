require 'pry'
class Activity
  attr_reader :name,
              :total_cost,
              :participants

  def initialize(name, total_cost = 0, participants = {})
    @name = name
    @total_cost = total_cost
    @participants = participants
  end

  def add_participant(name, amount)
    participants[name] = amount
  end

  def cost_per_person
    total_cost/participants.count
  end

  def person_owes
    participants.map do |name, amount|
      {name => cost_per_person - amount}
    end
    

  end
end
