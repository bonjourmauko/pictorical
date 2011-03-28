class CandidatesController < ApplicationController
  
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      redirect_to share_candidate_path @candidate[:token]
    else
      redirect_to new_candidate_path
    end
  end
  
  def share
    @candidate = Candidate.where(:token => params[:token]).first
  end
  
  

end
