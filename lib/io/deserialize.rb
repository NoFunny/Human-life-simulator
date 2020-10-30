require_relative '../basic/human'

def deserialize_human(string)
  data = JSON.parse(string)
  instance = Human.new(data['name'])
  instance.health = data['health']
  instance.mana = data['mana']
  instance.happiness = data['happiness']
  instance.tired = data['tired']
  instance.money = data['money']
  instance.alive = data['alive']
  instance
end
