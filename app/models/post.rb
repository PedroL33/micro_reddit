class Post < ApplicationRecord

    belongs_to :user

    validates :title, presence: true, 
                      length: { maximum: 50, minimum:5 }
    validates :content, presence: true

    has_many :comments, dependent: :destroy
end
