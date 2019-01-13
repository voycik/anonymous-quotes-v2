class Quote < ApplicationRecord
  has_many :comments
  validates :text, presence: true,
          length: { minimum: 10 }
end
