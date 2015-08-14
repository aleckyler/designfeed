class Submission < ActiveRecord::Base
  validates :title, :entry, presence: true
  belongs_to :user
  has_many :responses, dependent: :destroy
end
