class ArtistsController < ApplicationController

  before_filter :find_all_artists
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @artist in the line below:
    present(@page)
  end

  def show
    @artist = Artist.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @artist in the line below:
    present(@page)
  end

protected

  def find_all_artists
    @artists = Artist.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/artists")
  end

end
