class BookingsController < ApplicationController

  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
    @booking.tool_id = @tool

  end

  def create
    @tool= params[:tool_id]
    @booking = Booking.new(booking_params)
    @booking.tool_id = @tool
    @booking.user = current_user
    if @booking.save
      redirect_to tool_booking_path(@tool, @booking), notice: 'Booking request send successfully!'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
