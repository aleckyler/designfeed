class Profile < ActiveRecord::Base
  validates :username, uniqueness: true
  belongs_to :user
end
