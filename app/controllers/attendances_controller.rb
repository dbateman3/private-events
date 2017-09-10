class AttendancesController < ApplicationController
	def create
		event = Event.find(params[:attendance][:attended_event])
		if current_user.attended_events.include?(event)
			redirect_to root_url
		else
			current_user.attendances.create(attended_event: event)
			redirect_to root_url
		end
	end
end
