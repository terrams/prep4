class Member < ApplicationRecord

  belongs_to :group
  has_many :member_resources

end
