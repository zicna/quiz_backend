class User < ApplicationRecord
    # has_many :responses
    has_many :takes
    # user model validations
    validates :username, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
end
