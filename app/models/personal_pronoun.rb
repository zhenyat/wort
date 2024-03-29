class PersonalPronoun < ApplicationRecord
  has_many   :possessive_pronouns
  belongs_to :case
  belongs_to :number
  belongs_to :person
  belongs_to :gender

  validates :de, presence: true
  validates :en, presence: true
  validates :ru, presence: true
end
