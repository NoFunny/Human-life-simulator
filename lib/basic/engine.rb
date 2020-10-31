require_relative '../io/io_adapter'
require_relative 'menu'
require_relative 'check'
require_relative 'action'

class Engine
  def initialize(human)
    @human = human
    @menu = Menu.new
    @inspector = Check.new(@human)
  end

  def start
    while @inspector.alive?
      actions = get_available_actions(@human)

      @menu.draw_menu(@human, actions)
      select = gets.chomp.to_i - 1

      puts "Неизвестная команда, #{@human.name} не всемогущий" if select.negative? || select > actions.length
      actions[select].send actions[select].func, @human

      @inspector.checks
    end
  end
end
