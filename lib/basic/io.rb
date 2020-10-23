require_relative 'human'

def save(file_path, human)
  File.open(file_path, 'w') do |file|
    file.puts human.to_json
  end
end

def load(file_path)
  Human.new.from_json(File.open(file_path).readline)
end
