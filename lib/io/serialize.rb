class Serialize
  def serialize_human(human)
    {
      'name' => human.name,
      'health' => human.health,
      'mana' => human.mana,
      'happiness' => human.happiness,
      'tired' => human.tired,
      'money' => human.money,
      'alive' => human.alive
    }.to_json
  end
end

