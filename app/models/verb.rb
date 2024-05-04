class Verb < ApplicationRecord
  belongs_to :part_of_speech
  belongs_to :stem_vowel

  enum auxiliary: %w(hat ist hat/ist)
  enum form:      %w(irregular regular modal)
  enum prefix:    %w(na inseparable separable)

  validates :infinitive, presence: true
  validates :present,    presence: true
  validates :past,       presence: true
  validates :participle, presence: true
  validates :en,         presence: true
  validates :ru,         presence: true
end
