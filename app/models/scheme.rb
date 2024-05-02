class Scheme < ApplicationRecord
  has_many :verbs

  validates :rule, presence: true, uniqueness: true
end
