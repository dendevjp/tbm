class User < ApplicationRecord
  before_save { email.downcase! }
  has_secure_password
  validates :uid,  presence: true, length: { maximum: 30 },
                    format: { with: /\A[a-z0-9]+\z/i } 
  validates :name,  presence: true, length: { maximum: 50 }
  validates :division,  presence: true, length: { maximum: 50 }
  validates :team,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }
end
