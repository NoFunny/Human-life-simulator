class Menu

  def draw_hello
    puts 'Добро пожаловать в симулятор жизни'
  end

  # @param [Object] human
  def draw_state(human)
    print("       Ваше имя  #{human.name}\n")
    print("       Ваше здоровье  #{human.health}\n")
    print("       Ваша мана      #{human.mana}\n")
    print(" Ваш уровень счастья  #{human.happiness}\n")
    print("Ваш уровень усталости #{human.tired}\n")
    print("    Количество денег  #{human.money}\n")
    print("       Ещё жив?       #{human.alive}\n")
  end

  def draw_actions
    puts 'Выберите действие:'
    puts '1 - Пойти на работу'
    puts '2 - Созерцать природу'
    puts '3 - Пить вино и смотреть сериал'
    puts '4 - Сходить в бар'
    puts '5 - Выпить с маргинальными личностями'
    puts '6 - Петь в метро'
    puts '7 - Спать'
  end
end
