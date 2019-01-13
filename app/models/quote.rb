class Quote < ApplicationRecord
  validates :text, presence: true,
          length: { minimum: 10 }
end
