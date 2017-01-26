class ScenariosController < ApplicationController
    before_action :authenticate_user!

  def index
    @scenarios = Scenario.all
    render 'index.html.erb'
  end

  def show
    @scenario = Scenario.find_by(id: params[:id])
    render 'show.html.erb'
  end

end
