class DonationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @donation = current_user.donations.build
    # @donation.organization.build
  end

  def create
    @donation = current_user.donations.build(donation_params)
    if @donation.save
      redirect_to @donation
    else
      render :new
    end
  end

  def show
    @donation = current_user.donations.find_by(id: params[:id])
  end




  private

  def donation_params
    params.require(:donation).permit(:user_id, :organization_id, :date, :amount, :honoree, :comments, organization_attributes: :name)
  end



end
