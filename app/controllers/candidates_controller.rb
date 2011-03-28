class CandidatesController < ApplicationController
  respond_to :html, :js
  
  def new
    @candidate = Candidate.new
    session[:referral] = params[:referral]
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    @candidate[:referral] = session[:referral]
    @candidate.save
    #redirect_to share_candidate_path @candidate[:token]
  end
  
  def share
    @candidate = Candidate.where(:token => params[:token]).first
  end
  
end
