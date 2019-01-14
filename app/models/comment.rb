class Comment < ApplicationRecord
  belongs_to :quote
  validates :user, presence: true
  validates :body, presence: true
end
