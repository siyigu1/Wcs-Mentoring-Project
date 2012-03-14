class HomeController < ApplicationController

  def index
  end

  def about
	render "shared/about"
  end

end
