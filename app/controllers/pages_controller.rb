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
    @day = Date.today
    
    # raise

  end

  def show
    @user = current_user
    @tools = Tool.where(user_id:@user.id)
  end
end
