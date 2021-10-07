class Quiz < ApplicationRecord
  has_many :questions
  has_many :takes
  has_many :users, through: :takes
end
