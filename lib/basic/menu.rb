class Menu
  def initialize
    puts 'Welcome to life simulator !'
  end

  def draw_menu(human, actions)
    puts "\n"
    draw_state(human)
    puts "\n"
    draw_actions(actions)
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

  def draw_actions(actions)
    counter = 0
    actions.each do |action|
      puts "#{counter += 1} - #{action.label}"
    end
  end
end
