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
    human.instance_variables.each do |var|
      label = var[1..].capitalize
      value = human.instance_variable_get(var)
      puts format('%<label>-10s: %<value>-10s', label: label, value: value)
    end
  end

  def draw_actions(actions)
    counter = 0
    actions.each do |action|
      puts "#{counter += 1} - #{action.label}"
    end
  end
end
