module ApplicationHelper
  def current_user_helper
    if current_user
      link_to 'Log Out', destroy_user_session_path, method: :delete
    else
      (link_to 'Log in', new_user_session_path) +
      ' ' +
      (link_to 'Sign up', new_user_registration_path)
    end

  end

end
