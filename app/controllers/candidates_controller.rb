class CandidatesController < ApplicationController
  respond_to :html
  
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      redirect_to root_path
    end
  end

end
