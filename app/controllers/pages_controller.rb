class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    @user = current_user
    # find tool where user_id is 1
    @tool = Tool.where(user_id:@user.id)

    # raise

  end

  def show
    @user = current_user
    @booking = Booking.where(user_id:@user.id)
  end
end
