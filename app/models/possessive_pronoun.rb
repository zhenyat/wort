class PossessivePronoun < ApplicationRecord
  belongs_to :personal_pronoun
  belongs_to :number
  belongs_to :gender

  validates :de, presence: true
  validates :en, presence: true
  validates :ru, presence: true
end
