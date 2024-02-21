class Article < ApplicationRecord
  belongs_to :case
  belongs_to :number
  belongs_to :gender

  enum kind: %w(indefinite definite)
  
  validates :de, presence: true
end
