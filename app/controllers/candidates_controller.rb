class CandidatesController < ApplicationController
  respond_to :html, :js
  
  def new
    @candidate = Candidate.new
    session[:referral] = params[:referral] unless session[:referral]
    session[:http_referer] = request.env["HTTP_REFERER"] || 'none' unless session[:http_referer]
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    @candidate[:referral] = session[:referral]
    @candidate[:http_referer] = session[:http_referer]
    @candidate.save
    #redirect_to share_candidate_path @candidate[:token]
  end
  
  def share
    @candidate = Candidate.where(:token => params[:token]).first
  end
  
end
