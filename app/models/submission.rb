class Submission < ActiveRecord::Base
  validates :title, :entry, presence: true, uniqueness: true
  belongs_to :user
  has_many :responses, dependent: :destroy
  has_many :votes, dependent: :destroy

  def vote_count
    votes.where(submission_id: id, up_or_down: true).count-votes.where(submission_id: id, up_or_down: false).count
  end
end
