class CandidatesController < ApplicationController
  before_filter :find_page

  respond_to :html, :js, :json
  
  def new
    @candidate =
      if session[:candidate].nil?
        Candidate.new
      else
        session[:candidate]
      end
    session[:referral] = params[:referral] unless session[:referral]
    session[:http_referer] = request.env["HTTP_REFERER"] || 'none' unless session[:http_referer]
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    @candidate[:referral] = session[:referral]
    @candidate[:http_referer] = session[:http_referer]
    if @candidate.save
      session[:referral] = nil
      session[:http_referer] = nil
      session[:candidate] = nil
      redirect_to share_candidate_path @candidate[:token]
    else
      session[:candidate] = @candidate
      redirect_to "/apply"
    end
  end
  
  def share
    @candidate = Candidate.where(:token => params[:token]).first
  end
  
protected

  def find_page
    @page = Page.find_by_link_url("/candidates")
  end

end
