class User < ApplicationRecord
    has_secure_password

    has_many :takes
    has_many :quizzes, through: :takes

    validates :username, uniqueness: {case_sensitive: false}
    validates :email, presence: true
    validates :email, uniqueness: true
end
