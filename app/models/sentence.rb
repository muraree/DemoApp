class Sentence < ApplicationRecord
	has_many :entities

	def formatted_view
    words = entities.pluck(:text)
    sentence = ''
    
    description.split(' ').each do |word|
      if words.include?(word)
        colour = "%06x" % (rand * 0xffffff)
        entity_type = entities.find_by(text: word).text_type
        sentence << " <span style='color: ##{colour}'> #{word}<strong> #{entity_type}</strong></span>"
      else
        sentence << " #{word}"
      end
    end
    sentence
  end
end
