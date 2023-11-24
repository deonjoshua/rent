class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @booking.tool_id = @tool
    @booking.status = "Available"
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @tool_id = params[:tool_id]
    @booking = Booking.new(booking_params)
    if (@booking.end_date == nil || @booking.start_date == nil)
      redirect_to tool_path(@tool), notice: "Please enter dates"
    else
      @booking.price = (@booking.end_date - @booking.start_date) * @tool.rate
      @booking.status = "Booked"
      @booking.tool_id = @tool_id
      @booking.user = current_user
      if @booking.save
        redirect_to tool_booking_path(@tool_id, @booking.id), notice: 'Succesful booking!'
      else
        render :new
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @tool = Tool.find(params[:tool_id])
    @user = User.find(@tool.user_id)
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
