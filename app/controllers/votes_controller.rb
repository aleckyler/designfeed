class VotesController < ApplicationController

  def upvote
    @vote = Vote.new
    @submission = Submission.find(params[:submission_id])
    @vote.submission = @submission
    @vote.user = current_user
    @vote.up_or_down = true
    if @vote.save
      redirect_to(submissions_path)
    else
      @old_vote = Vote.find_by(user_id: current_user.id, submission_id: params[:submission_id])
      @old_vote.destroy
      @vote.save
      redirect_to(submissions_path)
    end
  end

  def downvote
    @vote = Vote.new
    @submission = Submission.find(params[:submission_id])
    @vote.submission = @submission
    @vote.user = current_user
    @vote.up_or_down = false
    if @vote.save
      redirect_to(submissions_path)
    else
      @old_vote = Vote.find_by(user_id: current_user.id, submission_id: params[:submission_id])
      @old_vote.destroy
      @vote.save
      redirect_to(submissions_path)
    end
  end
end
