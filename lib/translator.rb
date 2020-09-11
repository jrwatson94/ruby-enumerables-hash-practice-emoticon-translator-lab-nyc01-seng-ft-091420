require "yaml"
require "pry"

def load_library(yaml_file)
  library = YAML.load_file(yaml_file)
  
  library.each do |meaning,emoticons|
    library[meaning] = {
      :english => emoticons[0],
      :japanese => emoticons[1]
    }
  end
  library
end

def get_english_meaning(yaml_file,emoticon)
  library = {}
  library = load_library(yaml_file)
  
  library.each do |meaning, languages|
    if emoticon == library[meaning][:japanese]
      return library[meaning]
    end
  end
end
      
      