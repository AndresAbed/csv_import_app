class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    User.import(params[:csv])
    redirect_to root_url, notice: "Users imported."
  end
end
