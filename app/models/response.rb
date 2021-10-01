class Response < ApplicationRecord
  belongs_to :take
  belongs_to :options
  belongs_to :question
end
