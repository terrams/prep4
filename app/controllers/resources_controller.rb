class ResourcesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @resources = Resource.all
    render "index.html.erb"
  end

  def show
    @resources = Resource.find_by(id: params[:id])
    render 'show.html.erb'
  end

end
