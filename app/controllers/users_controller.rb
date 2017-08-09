class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    if params[:csv]
      if params[:csv].content_type == "text/csv"
        User.import(params[:csv])
        redirect_to root_url, notice: "Users imported."
      else
        redirect_to root_url, notice: "Only csv files allowed"
      end
    else
      redirect_to root_url, notice: "Please select a file."
    end
  end
end
