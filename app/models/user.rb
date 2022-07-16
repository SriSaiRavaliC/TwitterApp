class User < ApplicationRecord
    has_many :tweets
    #not completely sure how to relate follower and followees to user model, but I am writing psuedocode below
    has_many :followees
    has_many :followers

    validates :username, presence: true, length: { in: 4..14 }, uniqueness: true
    validates :email, presence: true,  uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
end
