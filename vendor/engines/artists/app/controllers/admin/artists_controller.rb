class Admin::ArtistsController < Admin::BaseController

  crudify :artist,
          :title_attribute => 'first_name'


end
