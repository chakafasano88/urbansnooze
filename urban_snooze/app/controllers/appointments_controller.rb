class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def create
    puts 'hey'
    puts params.inspect
    @appointment = Appointment.new(appointment_params)
      @appointment.user_id = current_user.id


    # @appointment = Appointment.new(
    #   location: 'Tribeca',
    #   when: '01:00',
    #   user_id: 1
    # )

    if @appointment.save
      flash[:notice] = "Naptime Saved!"
      # redirect_to home_path(@appointment)
    else
      flash[:alert] = "Invalid Information"
      redirect_to '/'

    end
  end

  def new
    @appointment = Appointment.new

  end

  def show
  end

  def destroy
  end

  private
  # strong params
  def appointment_params
    params.require(:appointment).permit(:location, :month, :day, :when)
  end
end
