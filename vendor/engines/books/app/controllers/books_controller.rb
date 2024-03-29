class BooksController < ApplicationController

  before_filter :find_all_books
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @book in the line below:
    present(@page)
  end

  def show
    @book = Book.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @book in the line below:
    present(@page)
  end

protected

  def find_all_books
    @books = Book.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/books")
  end

end
