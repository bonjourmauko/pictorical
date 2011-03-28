class CandidatesController < ApplicationController
  
  def new
    @candidate = Candidate.new
    session[:referral] = params[:referral]
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    @candidate[:referral] = session[:referral]
    if @candidate.save
      redirect_to share_candidate_path @candidate[:token]
    else
      render :action => "new"
    end
  end
  
  def share
    @candidate = Candidate.where(:token => params[:token]).first
  end
  
end
