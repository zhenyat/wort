class PartOfSpeech < ApplicationRecord
  validates :de, :en, :ru, uniqueness: true
end
