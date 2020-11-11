require_relative '../basic/human'

def deserialize_human(human, string)
  data = JSON.parse(string)
  human.name = (data['name'])
  human.health = data['health']
  human.mana = data['mana']
  human.happiness = data['happiness']
  human.tired = data['tired']
  human.money = data['money']
  human.alive = data['alive']
  human
end
