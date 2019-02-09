module ApplicationHelper
  def current_user_helper
    if current_user
      link_to 'Log Out', destroy_user_session_path, method: :delete, class: 'nav-link'
    else
      (link_to 'Log in', new_user_session_path, class: 'nav-link') +
      ' ' +
      (link_to 'Sign up', new_user_registration_path, class: 'nav-link')
    end
  end

  def session_helper
    if session[:source]
      "Thanks for visit me from <strong>#{session[:source]}</strong>".html_safe
    end
  end

end
