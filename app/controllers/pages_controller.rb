class PagesController < ApplicationController
  def home
  	@event = @current_user.created_events.build if logged_in?
  end
end
