require_relative '../basic/human'
require_relative 'serialize'
require_relative 'deserialize'

def save_progress(human)
  File.open('resources/data.json', 'w') do |file|
    file.print serialize_human(human)
  end
end

def load_progress(checks = Inspector.new)
  instance = deserialize_human(File.open('resources/data.json').readline)
  checks.human = instance
  instance
end
