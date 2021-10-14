class Room < ApplicationRecord
    has_many :chats, dependent: :destroy
    validates :title, presence: true
    
    has_many :tags
end
