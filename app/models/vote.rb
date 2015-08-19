class Vote < ActiveRecord::Base
  belongs_to :submission
  belongs_to :user
  validates :submission_id, uniqueness: {scope: :user_id}
end
