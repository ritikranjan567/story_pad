class User < ApplicationRecord

  has_secure_password
  has_many :stories, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 8 }, confirmation: true, on: [:create] 
  validates :password_confirmation, presence: true, on: [:create]

end
