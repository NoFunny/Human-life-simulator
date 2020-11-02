class Cause
  def less_health(human)
    human.health.zero? ? "#{human.name.chomp} не подлечил здоровье и скончался.\n" : ''
  end

  def very_tired(human)
    human.tired == 100 ? "#{human.name.chomp} не жалел себя и устал досмерти.\n" : ''
  end

  def a_lot_of_mana(human)
    human.mana == 100 ? "#{human.name.chomp} перепил и скончался.\n" : ''
  end

  def less_happiness(human)
    human.happiness == -10 ? "#{human.name.chomp} скончался от непреодалимой грусти.\n" : ''
  end

  def in_arrears(human)
    human.money == -50 ? "#{human.name.chomp} забили за долги.\n" : ''
  end

  def get_cause_of_dead(human)
    result = ''
    result.concat(less_health(human))
    result.concat(very_tired(human))
    result.concat(a_lot_of_mana(human))
    result.concat(less_happiness(human))
    result.concat(in_arrears(human))
  end
end
