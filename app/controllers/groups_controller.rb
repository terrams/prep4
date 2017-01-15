class GroupsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    @group = Group.create(
      name: params[:name],
      base_phone: params[:base_phone],
      base_zip: params[:base_zip],      
      photo: params[:photo],
      icon: params[:icon],
      local_meetup: params[:local_meetup],
      local_zip: params[:local_zip],
      remote_meetup: params[:remote_meetup],
      remote_zip: params[:remote_zip],
      crisis_contact_first_name: params[:crisis_contact_first_name],
      crisis_contact_last_name: params[:crisis_contact_last_name],
      cc_home_phone: params[:cc_home_phone],
      cc_cell_phone: params[:cc_cell_phone],
      cc_email: params[:cc_email],
      cc_zip: params[:cc_zip],
      user_id: params[:user_id]
    )
    redirect_to "/groups/#{@group.id}"
  end

  def show
    @group = Group.find_by(id: params[:id])
    render 'show.html.erb'    
  end

  def edit
    @group = Group.find_by(id: params[:id])
    render 'edit.html.erb'   
  end

  def update
    @group = Group.find_by(id: params[:id])
    @group.name = params[:name]
    @group.description = params[:description]
    @group.price = params[:price]
    @group.save
    flash[:success] = "Group Updated"
    redirect_to "/groups/#{@group.id}"
  end

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
    flash[:warning] = "Group Destroyed"
    redirect_to "/groups/new"
  end

end
