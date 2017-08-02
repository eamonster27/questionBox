class User < ApplicationRecord
  has_many :questions
  has_many :answers
  validates :username, :password, presence: true, length: { minimum: 4 }
end
