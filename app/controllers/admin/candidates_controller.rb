class Admin::CandidatesController < Admin::BaseController

  crudify :candidate,
          :title_attribute => 'name'
  
  def index
    @candidates = Candidate.sorted.all
  end
  
  def accept
    @candidate = Candidate.where(:id => params[:id]).first
    @candidate[:accepted] = "accepted"
    @candidate.save
    redirect_to URI.encode("http://publisher.pictorical.com/invitations/new?email=#{@candidate[:email]}&name=#{@candidate[:name]}")
  end
  
  def reject
    @candidate = Candidate.where(:id => params[:id]).first
    @candidate[:accepted] = "rejected"
    @candidate.save
    redirect_to URI.encode("http://publisher.pictorical.com/invitations/reject?email=#{@candidate[:email]}&name=#{@candidate[:name]}")
  end
end
