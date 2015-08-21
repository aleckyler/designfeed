class Profile < ActiveRecord::Base
  validates :username, presence: true,
    uniqueness: true,
    length: { maximum: 13},
    format: { with: /\A[a-zA-Z_0-9]+\z/, message: "only allows letters, numbers, and underscores." }
  belongs_to :user
  has_many :upload#, dependent: :destroy
end
