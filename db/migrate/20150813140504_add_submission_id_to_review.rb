class AddSubmissionIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :submission_id, :integer
  end
end
