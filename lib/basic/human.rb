require 'json'

class Human
  attr_accessor :health, :mana, :happiness, :tired, :money, :alive, :name

  def initialize(name = 'John Doe')
    @name = name
    @alive = true
    @health = 100
    @mana = 0
    @happiness = 0
    @tired = 0
    @money = 100
  end

  def to_json(*_args)
    {
      'name' => @name,
      'alive' => @alive,
      'health' => @health,
      'mana' => @mana,
      'happiness' => @happiness,
      'tired' => @tired,
      'money' => @money
    }.to_json
  end

  def from_json(string)
    data = JSON.parse(string)
    instance = Human.new(data['name'])
    instance.health = data['health']
    instance.mana = data['mana']
    instance.happiness = data['happiness']
    instance.tired = data['tired']
    instance.money = data['money']
    instance.alive = data['alive']
    instance
  end

  def go_to_work
    @happiness -= 5
    @mana -= 30
    @money += 100
    @tired -= 5
  end

  def contemplate_nature
    @happiness += 1
    @mana -= 10
    @tired += 10
  end

  def drink_wine_and_watch_tv_series
    @happiness -= 1
    @mana += 30
    @tired += 10
    @health -= 5
    @money -= 10
  end

  def go_to_the_bar
    @happiness += 1
    @mana += 60
    @tired += 40
    @health -= 10
    @money -= 100
  end

  def drink_with_marginalized_people
    @happiness += 5
    @health -= 80
    @mana += 90
    @tired += 80
    @money -= 150
  end

  def sing_in_the_subway
    @happiness += 1
    @mana += 10
    @money += @mana > 40 && @mana < 70 ? 60 : 10
    @tired += 20
  end

  def sleep
    @health += 90 if @mana < 30
    @happiness -= 3 if @mana > 70
    @mana -= 50
    @tired -= 70
  end
end
