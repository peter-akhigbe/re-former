class User < ApplicationRecord
  # Add validations for presence to each field in the model
  validates :name, :email, :password, presence: true
  # Add validations for uniqueness to email
  validates :email, uniqueness: true
  # Add validations for length to password
  validates :password, length: {minimum: 6}
end
