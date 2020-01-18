class OrganizationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @organization = curren_user.organizations.build
    #changed to use ActiveRecord Associations, but may not work.
  end

  def show
    @organization = current_user.organizations.find_by(id: params[:id])
    @donations = @organization.donations.find_by(user_id: params[:user_])
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end



end
