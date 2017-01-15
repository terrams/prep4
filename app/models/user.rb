class User < ApplicationRecord::Base
  has_secure_password

  has_many :groups
end
