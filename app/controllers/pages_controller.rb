class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    @user = current_user
    # booking on other tool
    @booking = Booking.where(user_id:@user.id)
    @tools = Tool.where(user_id:@user.id)
    @lent = Booking.where.not(user_id:@user.id)
    @day = Date.today
  end

  def show
    @user = current_user
    @tools = Tool.where(user_id:@user.id)
  end
end
