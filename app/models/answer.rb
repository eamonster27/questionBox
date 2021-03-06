class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :content, presence: true, length: { minimum: 2 }
end
