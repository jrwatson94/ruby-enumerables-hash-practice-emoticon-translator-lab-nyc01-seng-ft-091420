require "yaml"
require "pry"

def load_library(file)
  library = YAML.load_file(lib/emoticons.yml)
  
  library.each do |meaning,emoticons|
    library[meaning] = {
      :english => [emoticons[0]],
      :japanese => [emoticons[1]]
    }
  end
  library
end
  