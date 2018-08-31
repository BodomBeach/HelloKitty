module AdminsHelper

  def admin_authenticate?
    unless current_user.try(:admin?)
      flash[:alert] = "Please log in."
      redirect_to new_user_session_path
    end
  end

end
