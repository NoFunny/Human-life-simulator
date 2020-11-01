class Cause
  def less_health(human)
    puts "#{human.name.chomp} не подлечил здоровье и скончался.\n" if human.health.zero?
  end

  def very_tired(human)
    puts "#{human.name.chomp} не жалел себя и устал досмерти.\n" if human.tired == 100
  end

  def a_lot_of_mana(human)
    puts "#{human.name.chomp} перепил и скончался.\n" if human.mana == 100
  end

  def less_happiness(human)
    puts "#{human.name.chomp} скончался от непреодалимой грусти.\n" if human.happiness == -10
  end

  def in_arrears(human)
    puts "#{human.name.chomp} забили за долги.\n" if human.money == -50
  end

  def print_cause_of_dead(human)
    less_health(human)
    very_tired(human)
    a_lot_of_mana(human)
    less_happiness(human)
    in_arrears(human)
  end
end
