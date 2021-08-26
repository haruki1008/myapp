class Room < ApplicationRecord
    has_many :chats
    validates :title, presence: true
end
