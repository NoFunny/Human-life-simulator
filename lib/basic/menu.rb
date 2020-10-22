class Menu
  # @param [Object] human
  def draw_state(human)
    puts 'Добро пожаловать в симулятор жизни'
    print("       Ваше имя  #{human.name}\n")
    print("       Ваше здоровье  #{human.health}\n")
    print("       Ваша мана      #{human.mana}\n")
    print(" Ваш уровень счастья  #{human.happiness}\n")
    print("Ваш уровень усталости #{human.tired}\n")
    print("    Количество денег  #{human.money}\n")
    print("       Ещё жив?       #{human.alive}\n")
  end
end
