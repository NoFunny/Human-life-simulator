require_relative 'human'
require_relative 'engine'

class App
  def run
    puts 'Enter human name: '
    human = Human.new(gets.chomp.to_s)
    engine = Engine.new(human)
    engine.start
  end
end
