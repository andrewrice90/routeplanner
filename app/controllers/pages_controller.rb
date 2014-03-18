class PagesController < ApplicationController

	before_filter :authorise, :only => :help
  def home
	 @markers = Marker.all
  end

  def about
    @markers = Marker.all
  #@vehicles = current_user.vehicles
  end

  def contact
  end

  def help
	@vehicles = @current_user.vehicles
  end
end
