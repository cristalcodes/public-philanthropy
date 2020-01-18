class OrganizationsController < ApplicationController

  def new
    @organization = Organization.new
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end



end
