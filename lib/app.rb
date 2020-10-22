require_relative 'basic/human'
require_relative 'basic/menu'

class App
  human = Human.new('Ваня')
  menu = Menu.new
  menu.draw_state(human)
end
