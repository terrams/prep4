class GroupsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    @group = Group.create(
      name: params[:name],
      base_phone: params[:base_phone],     
      photo: 'group_photo.png',
      icon: 'group_icon.png',
      local_meetup: params[:local_meetup],
      remote_meetup: params[:remote_meetup],
      crisis_contact_first_name: params[:crisis_contact_first_name],
      crisis_contact_last_name: params[:crisis_contact_last_name],
      cc_home_phone: params[:cc_home_phone],
      cc_cell_phone: params[:cc_cell_phone],
      cc_email: params[:cc_email],
      cc_zip: params[:cc_zip],
      user_id: current_user.id
    )

    @home_address = Address.create(
      addr1: params[:home_address],
      city: params[:home_city],
      state: params[:home_state],
      zip: params[:home_zip],
      loc_type: 'home',
      group_id: @group.id,
      location_name: 'Home Base'
    )

    @local_address = Address.create(
      addr1: params[:local_address],
      city: params[:local_city],
      state: params[:local_state],
      zip: params[:local_zip],
      loc_type: 'local',
      group_id: @group.id,
      location_name: params[:local_meetup_name]
    )

     @remote_address = Address.create(
      addr1: params[:remote_address],
      city: params[:remote_city],
      state: params[:remote_state],
      zip: params[:remote_zip],
      loc_type: 'remote',
      group_id: @group.id,
      location_name: params[:remote_meetup_name]
    )

    redirect_to "/groups/#{@group.id}"
  end

  def show
    @group = Group.find_by(id: params[:id])
    @members = Member.where(group_id: params[:id])
    @home_address = Address.where(group_id: params[:id], loc_type: "home")
    @local_address = Address.where(group_id: params[:id], loc_type: "local")
    @remote_address = Address.where(group_id: params[:id], loc_type: "remote")
    render 'show.html.erb'    
  end

  def edit
    @group = Group.find_by(id: params[:id])
    render 'edit.html.erb'   
  end

  def update
    @group = Group.find_by(id: params[:id])
    @group.name = params[:name]
    @group.base_phone = params[:base_phone]
    @group.base_zip = params[:base_zip]      
    @group.photo = params[:photo]
    @group.icon = params[:icon]
    @group.local_meetup = params[:local_meetup]
    @group.local_zip = params[:local_zip]
    @group.remote_meetup = params[:remote_meetup]
    @group.remote_zip = params[:remote_zip]
    @group.crisis_contact_first_name = params[:crisis_contact_first_name]
    @group.crisis_contact_last_name = params[:crisis_contact_last_name]
    @group.cc_home_phone = params[:cc_home_phone]
    @group.cc_cell_phone = params[:cc_cell_phone]
    @group.cc_email = params[:cc_email]
    @group.cc_zip = params[:cc_zip]
    @group.user_id = current_user.id
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
