class OrganizationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @organization = Organization.new
  end

  # def show 
  #
  # end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end



end
