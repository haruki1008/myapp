class Chat < ApplicationRecord
    belongs_to :room
     validates :content, presence: true
     mount_uploader :image, ImageUploader
end
