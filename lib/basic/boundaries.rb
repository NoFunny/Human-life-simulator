class Boundaries
  def check_boundaries(checks, human)
    checks.boundaries_health(human)
    checks.boundaries_mana(human)
    checks.boundaries_happiness(human)
    checks.boundaries_tired(human)
    checks.boundaries_money(human)
    checks.life_condition(human)
  end
end
