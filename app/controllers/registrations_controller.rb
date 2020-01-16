class RegistrationsController < Devise::RegistrationsController

  def registrations
  end 

  private

  def sign_up_params
    params.require(:users).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:users).permit(:email, :password, :password_confirmation)
  end

end
