require_relative '../basic/human'
require_relative 'serialize'
require_relative 'deserialize'

class IOAdapter
  def initialize(resources = 'resources/')
    @path = resources
  end

  def save_progress(human)
    File.open("#{@path}#{Time.new.strftime('%Y-%m-%d[%H:%M:%S]')}.json", 'w') do |file|
      file.write Serialize.new.serialize_human(human)
    end
  end

  def load_progress(human)
    saves = available_saves
    puts 'No saves available' if saves.length.zero?

    puts "\nSelect save:"
    saves.each_with_index do |save, index|
      puts "#{index} - #{save}"
    end

    choice = gets.chomp.to_i
    Deserialize.new.deserialize_human(human, File.open(saves[choice]).readline)
  end

  def available_saves
    Dir["#{@path}*.json"]
  end
end
