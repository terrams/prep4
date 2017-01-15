class SessionsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:success] = 'Successfully logged in!'
      group_id = Group.find_by(user_id: current_user.id)
      redirect_to "/groups/#{group_id}"
    else
      # flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    # flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end

end
