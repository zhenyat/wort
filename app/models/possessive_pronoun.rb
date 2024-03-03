class PossessivePronoun < ApplicationRecord
  belongs_to :personal_pronoun
  belongs_to :number
  belongs_to :gender

  enum kind: %w(as_article as_noun)

  validates :de, presence: true
  validates :en, presence: true
  validates :ru, presence: true
end
