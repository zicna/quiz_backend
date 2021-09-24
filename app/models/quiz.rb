class Quiz < ApplicationRecord
  belongs_to :category
  has_many :questions
end
