require_relative '../io/io_adapter'
require_relative 'menu'
require_relative 'inspector'
require_relative 'action'

class Engine
  def initialize(human)
    @human = human
    @menu = Menu.new
    @inspector = Inspector.new(@human)
    @action = Action.new
  end

  def start
    while @human.alive
      actions = @action.get_available_actions(@human)

      @menu.draw_menu(@human, actions)
      choice = gets.chomp.to_i - 1

      puts "Неизвестная команда, #{@human.name} не всемогущий" if choice.negative? || choice > actions.length
      actions[choice].send actions[choice].func, @human

      @inspector.run_inspect
    end
  end
end
