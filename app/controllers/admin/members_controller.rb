class Admin::MembersController < ApplicationController
   before_action :authenticate_admin!

  def index
    @members= Member.all
  end

  def show
    @member = Member.find(current_member.id)
  end

  def edit
    @member = Member.find(current_member.id)
  end

  def update
    @member= Member.find(current_member.id)
    @member.update(member_params)
    redirect_to members_member_path(current_member.id)
  end

  def member_params
  	params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number,:is_deleted)
  end

end
