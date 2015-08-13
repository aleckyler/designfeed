class RegistrationsController < Devise::RegistrationsController
  protected

 # used to redirect user to create profile after they sign up

  def after_sign_up_path_for(resource)
    :new_profile # Or :prefix_to_your_route
  end
  def after_inactive_sign_up_path_for(resource)
    :new_profile # Or :prefix_to_your_route
  end
end
