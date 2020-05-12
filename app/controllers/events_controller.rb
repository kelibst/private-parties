class EventsController < ApplicationController
    def new
        @event = Event.new
    end

    def create
        @user = current_user
        @event = @user.events.new(event_params)
        if @event.save
            flash[:success] = 'Event created!'
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
    end

    private

    def event_params
        params.require('event').permit(:description, :title, :date, :location)
    end
end