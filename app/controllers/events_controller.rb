class EventsController < ApplicationController
	before_action :logged_in?, only: [:create]
	

	def create
		@event = current_user.created_events.build(event_params)
		if @event.save
			redirect_to root_url
		else
			render 'pages/home'
		end
	end

	def show
		@event = Event.find(params[:id])
		@user = User.find(@event.creator_id).name
	end

	def index
		@events = Event.all
	end

	private

	def event_params
		params.require(:event).permit(:description)
	end

end
