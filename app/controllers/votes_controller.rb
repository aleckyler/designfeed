class VotesController < ApplicationController

  def upvote
    if !user_signed_in?
      redirect_to new_user_session_path, notice: 'You must sign in to vote'
    else
      @vote = Vote.new
      @submission = Submission.find(params[:submission_id])
      @vote.submission = @submission
      @vote.user = current_user
      @vote.up_or_down = true
      if @vote.save
        redirect_to(@submission)
      else
        @old_vote = Vote.find_by(user_id: current_user.id, submission_id: params[:submission_id])
        @old_vote.destroy
        @vote.save
        redirect_to(@submission)
      end
    end
  end

  def downvote
    if !user_signed_in?
      redirect_to new_user_session_path, notice: 'You must sign in to vote'
    else
      @vote = Vote.new
      @submission = Submission.find(params[:submission_id])
      @vote.submission = @submission
      @vote.user = current_user
      @vote.up_or_down = false
      if @vote.save
        redirect_to(@submission)
      else
        @old_vote = Vote.find_by(user_id: current_user.id, submission_id: params[:submission_id])
        @old_vote.destroy
        @vote.save
        redirect_to(@submission)
      end
    end
  end
end
