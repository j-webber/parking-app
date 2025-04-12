class User < ApplicationRecord
  validates :role_id, presence: true
  has_secure_password
  has_many :sessions, dependent: :destroy
  belongs_to :role

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
