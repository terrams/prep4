class Resource < ApplicationRecord

  has_many :group_resources
  has_many :member_resources

end
