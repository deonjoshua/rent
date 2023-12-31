class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.where.not(user_id: current_user.id)
    if params[:query].present?
      @tools = @tools.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @tool = Tool.new

  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tools_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

    @booking = Booking.new
    @user = User.find(@tool.user_id)
    # raise
    @markers ={
      lat: @user.latitude,
      lng: @user.longitude
    }
  end

  def edit
  end

  def update
    if @tool.update(tool_params)
      redirect_to tool_path(@tool)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tool.destroy
    redirect_to mylisting_path, status: :see_other
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description, :rate, :condition, :image)
  end
end
