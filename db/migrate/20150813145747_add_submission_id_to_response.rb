class AddSubmissionIdToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :submission_id, :integer
  end
end
