class Group < ApplicationRecord

  belongs_to :user
  has_many :members
  has many :group_resources

  
end
