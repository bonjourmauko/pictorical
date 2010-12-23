class WritersController < ApplicationController

  before_filter :find_all_writers
  before_filter :find_page

#  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @writer in the line below:
#    present(@page)
#  end

  def show
    @writer = Writer.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @writer in the line below:
    present(@page)
  end

protected

  def find_all_writers
    @writers = Writer.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/writers")
  end

end
