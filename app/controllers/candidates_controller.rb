class CandidatesController < ApplicationController
  
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
