class Follow < ApplicationRecord
    belongs_to :follower,  class_name: 'User'
    belongs_to :folowee,  class_name: 'User'

    validates :follower_id, uniqueness: { scope: :followee_id }
    validates :followee_id, uniqueness: { scope: :follower_id }
end
