class Take < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :responses
end
