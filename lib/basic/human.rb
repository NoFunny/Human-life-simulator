class Human
  attr_accessor :health, :mana, :happiness, :tired, :money, :alive, :name

  def initialize(name)
    @health = 100
    @mana = 0
    @happiness = 0
    @tired = 0
    @money = 0
    @alive = true
    @name = name
  end
end
