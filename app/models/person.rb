class Person < ApplicationRecord
  has_many :personal_pronoun
  # has_many :possessive_pronoun
  
  validates :de, presence: true, uniqueness: true
  validates :en, presence: true, uniqueness: true
  validates :ru, presence: true, uniqueness: true
  validates :abbr_de, presence: true, uniqueness: true
  validates :abbr_en, presence: true, uniqueness: true
  validates :abbr_ru, presence: true, uniqueness: true
end
