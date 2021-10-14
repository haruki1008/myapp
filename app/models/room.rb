class Room < ApplicationRecord
    has_many :chats, dependent: :destroy 
    
    validates :title, presence: true
    
    has_many :room_tags
    has_many :tags, through: :room_tags
    accepts_nested_attributes_for :room_tags
end
