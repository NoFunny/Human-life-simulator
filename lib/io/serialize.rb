def serialize_human(human)
  {
    'name' => human.name,
    'alive' => human.alive,
    'health' => human.health,
    'mana' => human.mana,
    'happiness' => human.happiness,
    'tired' => human.tired,
    'money' => human.money
  }.to_json
end
