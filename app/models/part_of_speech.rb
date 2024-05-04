class PartOfSpeech < ApplicationRecord
  has_many :verbs
  validates :de, :en, :ru, uniqueness: true
end
