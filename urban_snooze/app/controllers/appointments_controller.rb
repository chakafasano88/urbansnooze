class AppointmentsController < ApplicationController
  def index
  end

  def create
    @appointment = Appointment.new(
    location: params[:appointment][:location],
    datetime: params[:appointment][:datetime],
    )

    if @appointment.save
      flash[:notice] = "Naptime Saved!"
      redirect_to home_path(@appointment)
    else
      flash[:alert] = "Invalid Information"
      render :new
    end
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def destroy
  end
end
