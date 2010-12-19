class Admin::WritersController < Admin::BaseController

  crudify :writer,
          :title_attribute => 'first_name'


end
