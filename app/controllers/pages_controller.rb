class PagesController < ApplicationController
  def any_page
    render params[:pagename]
  end
end
