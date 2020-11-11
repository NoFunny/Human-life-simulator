require_relative '../basic/human'
require_relative 'serialize'
require_relative 'deserialize'

class IOAdapter
  def save_progress(human)
    File.open("resources/#{Time.new.strftime('%Y-%m-%d[%H:%M:%S]')}.json", 'w') do |file|
      file.write serialize_human(human)
    end
  end

  def load_progress(human)
    saves = available_saves
    puts 'No saves available' if saves.length.zero?
    counter = 0

    puts "\nSelect save:"
    saves.each do |save|
      puts "#{counter += 1} - #{save}"
    end

    choice = gets.chomp.to_i - 1
    deserialize_human(human, File.open(saves[choice]).readline)
  end

  def available_saves
    Dir['resources/*.json']
  end
end
