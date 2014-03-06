class PagesController < ApplicationController

	before_filter :authorise, :only => :help
  def home
	
  end

  def about
  end

  def contact
  end

  def help
	@vehicles = @current_user.vehicles
  end
end
