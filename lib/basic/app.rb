require_relative 'human'
require_relative 'menu'
require_relative 'check'
require_relative 'loop'

class App
  def run
    puts 'Enter human name: '
    human = Human.new(gets.chomp.to_s)
    Loop.new.loop(Menu.new, human, Check.new(human))
  end
end
