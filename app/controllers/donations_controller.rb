class DonationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @donation = current_user.donations.build
    # @donation.organization.build
  end

  def create
    @donation = current_user.donations.build(donation_params)
    if @donation.save
      redirect_to user_donation_path(@donation.user, @donation)
    else
      render :new
    end
  end

  def show
    @donation = current_user.donations.find_by(id: params[:id])
  end




  private

  def donation_params
    params.require(:donation).permit(:date, :amount, :honoree, :comments, :user_id, :organization_id, organization_attributes: [:name])
  end




end
