class Response < ApplicationRecord
  belongs_to :take
  belongs_to :option
  belongs_to :question
end
