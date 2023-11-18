class MembersController < ApplicationController
  before_action :authenticate_user!, only: %i[edit_description update_description edit_personal_details update_personal_details]

  def show
    @user = User.find(params[:id])
  end

  def edit_description; end

  def update_description
    current_user.update(about: params[:user][:about])

    respond_to do |format|
      format.turbo_stream
    end
  end

  def edit_personal_details; end

  def update_personal_details
    current_user.update(user_personal_info_params)

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def user_personal_info_params
    params.require(:user).permit(:first_name, :last_name, :city, :state, :country, :pincode, :profile_title)
  end
end
