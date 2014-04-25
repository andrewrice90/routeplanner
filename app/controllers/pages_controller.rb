class PagesController < ApplicationController

  before_filter :authorise, :only => :help
  def home
   @markers = Marker.all
  end

  def about
  @markers = Marker.all
  #@vehicle = current_user.vehicles
  end

  def contact
   @markers = Marker.all
   #@vehicle = @current_user.vehicles.first
  end

  def help
   @markers = Marker.all
   @vehicle = Vehicle.find(params[:vehicles])
  end
end
