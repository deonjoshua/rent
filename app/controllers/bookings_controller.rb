class BookingsController < ApplicationController

  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
    @booking.tool_id = @tool
    @booking.status = "Available"
  end

  def create
    @tool= params[:tool_id]
    if !(Tool.find(@tool).user_id == current_user.id)
      @booking = Booking.new(booking_params)
      @booking.status = "Booked"
      @booking.price = (@booking.end_date - @booking.start_date) * Tool.find(@tool).rate
      @booking.tool_id = @tool
      @booking.user = current_user
      if @booking.save
        redirect_to dashboard_path, notice: 'Succesful booking!'
      else
        render :new
      end
    else
      redirect_to tools_path, notice: "You can't book your own Tool mate!"
    end
  end

  def update
    if @booking.update(booking_params)
        redirect_to @booking, notice: 'Change request updated!'
      else
        render :edit
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
