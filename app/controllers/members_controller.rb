class MembersController < ApplicationController
    before_action :authenticate_user!

  def index
    group =Group.find_by(user_id: current_user.id)
    @members = Member.where(group_id: group.id)
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    group =Group.find_by(user_id: current_user.id)
    @member = Member.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    member_type: params[:member_type],      
    gender: params[:gender],
    group_id: group.id,
    active: params[:active],
    work_phone: params[:work_phone],
    cell_phone: params[:cell_phone],
    email: params[:email],
    photo: params[:photo],
    special_needs: params[:special_needs]
    )
    redirect_to "/members/#{@member.id}"
  end

  def show
    @member = Member.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @member = Member.find_by(id: params[:id])
    render 'edit.html.erb'     
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.first_name = params[:first_name]
    @member.last_name = params[:last_name]
    @member.member_type = params[:member_type]      
    @member.gender = params[:gender]
    @member.group_id = @member.group_id
    @member.active = params[:active]
    @member.work_phone = params[:work_phone]
    @member.cell_phone = params[:rcell_phone]
    @member.email = params[:email]
    @member.photo = params[:photo]
    @member.special_needs = params[:special_needs]
    @member.save
    flash[:success] = "Member Updated"
    redirect_to "/members/#{@member.id}"    
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    group_id = @member.group_id
    @member.destroy
    flash[:warning] = "Member Destroyed"
    redirect_to "/members"    
  end

end
