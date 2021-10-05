class Response < ApplicationRecord
  belongs_to :take
  belongs_to :option
  belongs_to :question

  # add this custom methods so we don't have json file include options for every response
  def is_true
    self.option.is_correct
  end

  def url_explanation
    self.option.explanation
  end
end
