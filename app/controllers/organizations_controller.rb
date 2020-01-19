class OrganizationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @organizations = current_user.organizations
  end

  def new
    @organization = current_user.organizations.build
    #changed to use ActiveRecord Associations, but may not work.
  end

  def show
    @organization = current_user.organizations.find_by(id: params[:id])
  end



  private

  def organization_params
    params.require(:organization).permit(:name)
  end



end
