class GroupsController < ApplicationController
  before_action :authenticate_user!
  
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
      user_id: current_user.id,
      base_addr1: params[:home_address],
      base_city: params[:home_city],
      base_state: params[:home_state],
      base_zip: params[:home_zip],
      base_name: 'Home Base',
      local_addr1: params[:local_address],
      local_city: params[:local_city],
      local_state: params[:local_state],
      local_zip: params[:local_zip],
      local_name: params[:local_meetup_name],
      remote_addr1: params[:remote_address],
      remote_city: params[:remote_city],
      remote_state: params[:remote_state],
      remote_zip: params[:remote_zip],
      remote_name: params[:remote_meetup_name]
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
    @group.base_addr1 = params[:home_address]
    @group.base_city = params[:home_city]
    @group.base_state = params[:home_state]
    @group.base_zip = params[:home_zip]
    @group.local_addr1 = params[:local_address]
    @group.local_city = params[:local_city]
    @group.local_state = params[:local_state]
    @group.local_zip = params[:local_zip]
    @group.local_name = params[:local_meetup_name]
    @group.remote_addr1 = params[:remote_address]
    @group.remote_city = params[:remote_city]
    @group.remote_state = params[:remote_state]
    @group.remote_zip = params[:remote_zip]
    @group.remote_name = params[:remote_meetup_name]
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
