class User < ApplicationRecord
  has_secure_password
  has_one :group
  
end
