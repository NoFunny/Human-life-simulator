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
    deserialize_human(human, File.open('resources/data.json').readline)
  end
end
