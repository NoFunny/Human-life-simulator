class Menu
  def initialize
    puts 'Welcome to life simulator !'
  end

  def draw(human)
    puts "\n"
    draw_state(human)
    puts "\n"
    draw_actions
  end

  def draw_state(human)
    print("Name:      #{human.name}\n")
    print("Health:    #{human.health}\n")
    print("Mana:      #{human.mana}\n")
    print("Happiness: #{human.happiness}\n")
    print("Tired:     #{human.tired}\n")
    print("Cash:      #{human.money}\n")
    print("Alive:     #{human.alive ? 'Yes' : 'No'} \n")
  end

  def draw_actions
    puts 'Select action:'
    puts '1 - Пойти на работу'
    puts '2 - Созерцать природу'
    puts '3 - Пить вино и смотреть сериал'
    puts '4 - Сходить в бар'
    puts '5 - Выпить с маргинальными личностями'
    puts '6 - Петь в метро'
    puts '7 - Спать'
  end
end
