module ApplicationHelper
  def current_user_helper
    if current_user
      link_to 'Log Out', destroy_user_session_path, method: :delete, class: 'nav-link'
    else
      (link_to 'Log in', new_user_session_path, class: "btn btn-outline-success my-2 my-sm-1 mx-2") +
      ' ' +
      (link_to 'Sign up', new_user_registration_path, class: "btn btn-outline-success my-2 my-sm-1 mx-2")
    end
end

  def session_helper
    if session[:source]
      "Thanks for visit me from <strong>#{session[:source]}</strong>".html_safe
    end
  end

  def notice_helper
    if notice
      "<p class='notice'>#{notice}</p>".html_safe
    end
  end

  def alert_helper
    if flash[:alert]
      js add_gritter(flash[:notice], :title => "OOPS!")
    elsif flash[:error]
       js add_gritter(flash[:error], :title => "OMG!!")
    elsif flash[:notice]
       js add_gritter(flash[:notice], :title => "HEY!", time: 1000)
    else flash[:success]
       js add_gritter(flash[:success], :title => "Oh yes!!")
     end
   end

end
