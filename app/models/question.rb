class Question < ApplicationRecord
  belongs_to :quiz
  has_many :options
  has_many :responses
end
