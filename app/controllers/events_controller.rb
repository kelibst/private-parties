class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit]

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

    def index
        @events = Event.all
    end

    def show
        @user = current_user
    end

    def edit
    end

    def destroy
    end

    private

    def event_params
        params.require('event').permit(:description, :title, :date, :location)
    end

    def set_event
        @event = Event.find(params[:id])
    end
end