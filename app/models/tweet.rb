class Tweet < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: { maximum: 10000 }
end
