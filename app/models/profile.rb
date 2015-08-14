class Profile < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  belongs_to :user
end
