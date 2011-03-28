class Admin::CandidatesController < Admin::BaseController

  crudify :candidate,
          :title_attribute => 'name'


end
