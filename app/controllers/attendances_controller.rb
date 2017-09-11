class AttendancesController < ApplicationController
	def create
		event = Event.find(params[:attended_event_id])
		if current_user.attended_events.include?(event)
			redirect_to current_user
		else
			current_user.attendances.create(attended_event: event)
			redirect_to root_url
		end
	end
end
