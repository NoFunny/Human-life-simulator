require 'json'

class Human
  attr_accessor :health, :mana, :happiness, :tired, :money, :alive, :name

  def initialize(name = 'John Doe')
    @name = name
    @health = 100
    @mana = 0
    @happiness = 0
    @tired = 0
    @money = 100
    @alive = true
  end
end
