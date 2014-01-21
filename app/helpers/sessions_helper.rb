module SessionsHelper

  def sign_in(user, keep_me_logged_in)
    remember_token = User.new_remember_token

    if keep_me_logged_in.to_i == 1

      cookies.permanent[:remember_token] = remember_token

      cookies.permanent[:keep_me_logged_in] = 1
    else

      cookies[:remember_token] = { value: remember_token, expires: 2.week.from_now }

      cookies.delete(:keep_me_logged_in)
    end

    user.update_columns(remember_token: User.encrypt(remember_token) )

    self.current_user = user
  end

  def sign_out
    self.current_user = nil

    cookies.delete(:remember_token)
  end

  def user_logged?
    !current_user.nil?
  end
  
  def require_user!

    unless user_logged?

      redirect_to admin_log_in_path, error: 'You dont have enough permissions to be here'

    end
  end
  
  def require_admin!

    unless user_admin?

      redirect_to admin_students_path, error: 'You dont have enough permissions to be here'

    end
  end
  
  def current_user
    remember_token = User.encrypt(cookies[:remember_token])

    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_user=(user)
    @current_user = user
  end

  def user_admin?
    current_user.type_user == 200
  end

end