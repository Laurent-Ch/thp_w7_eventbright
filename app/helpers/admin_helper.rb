module AdminHelper
  
  def user_admin?
    unless current_user.admin = true
      flash[:danger] = "Tu n'as pas l'accès administrateur"
      redirect_to root_path
    end
  end
end
