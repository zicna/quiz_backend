class Response < ApplicationRecord
  belongs_to :user
  belongs_to :option
  belongs_to :question
end
