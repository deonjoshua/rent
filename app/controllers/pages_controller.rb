class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    @user = current_user
    # tool for current user
    @tools = Tool.where(user_id:@user.id)

    # booking on other tool
    @booking = Booking.where(user_id:@user.id)
    # @booking.tool_id = Booking.find(tool_id:params[:id])

    # find booking on other people tool
    # @booking = Booking.where(user_id:@tool.user_id)
    # raise

  end

  def show
    @user = current_user
    @tools = Tool.where(user_id:@user_id)
    raise
  end
end
