class CandidatesController < ApplicationController
  
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      render :action => "share"
    else
      render :action => "new"
    end
  end
  
  def share
    @token = params[:token]
  end
  
  

end
