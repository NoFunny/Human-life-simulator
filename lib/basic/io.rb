require_relative 'human'

def save_progress(human)
  File.open('resources/data.json', 'w') do |file|
    file.print human.to_json
  end
end

def load_progress(checks = Check.new)
  instance = Human.new.from_json(File.open('resources/data.json').readline)
  checks.human = instance
  instance
end
