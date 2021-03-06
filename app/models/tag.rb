class Tag < ApplicationRecord
    has_many :room_tags, dependent: :destroy
    has_many :rooms, through: :room_tags
    
    validates :name, presence: true
    validates :name, uniqueness: true
end
