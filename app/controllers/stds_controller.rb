class StdsController < ApplicationController
  def index
  	@students = Std.all
  end

  def new
  	@student = Std.new
  end

  def create
  	Std.create(std_params)
  	# return render json: params.inspect
  	redirect_to stds_path
  end

  def edit
  	@std = Std.find(params[:id])	
  end

  def update
  	
  end

  private
  	def std_params
      params.require(:std).permit(:name, :sirname, :dob, :gender, :contact, :classes, :email)
    end
end
