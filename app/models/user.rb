class User < ApplicationRecord
	extend FriendlyId
  friendly_id :username, use: [:finders, :slugged]

  has_secure_password
  has_many :problems, dependent: :destroy
  has_many :solutions, dependent: :destroy
  
	validates :username, presence: true
	validates :username, uniqueness: { case_sensitive: false }
	validates :username, length: { minimum: 4 }
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :password, length: { minimum: 6 }
         
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
