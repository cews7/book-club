class User < ApplicationRecord
  has_secure_password

  has_many :reviews, optional: true
end
