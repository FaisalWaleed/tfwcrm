class IssuesController < ApplicationController
  before_action :authenticate_user!
  def new
  end
  def index
    @issues = current_user.issues
  end

  def show
  end

  def destroy
  end

  def update
  end

  private
    def user_params
      params.require(:issue).permit(:email, :content, :status, :url, :user_id, :id) 
    end
end
