class User < ApplicationRecord

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, 
                     length: { maximum: 50 },
                     uniqueness: { case_sensitive: false }
    validates :email, presence: true, 
                      length: { maximum:200 }, 
                      uniqueness: { case_sensitive: false }, 
                      format: { with: VALID_EMAIL_REGEX }                   
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy

end
