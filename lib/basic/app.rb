require_relative 'human'
require_relative 'menu'
require_relative 'check'
require_relative 'loop'
require_relative '../actions/actions'
require_relative 'boundaries'


class App

  def run
    menu = Menu.new
    checks = Check.new
    actions = Actions.new
    puts 'Введите имя персонажа'
    name = gets
    boundaries = Boundaries.new
    human = Human.new(name)
    loop = Loop.new
    menu.draw_hello
    loop.loop(human, actions, checks, boundaries)
  end


end
