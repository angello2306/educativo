class Admin::SessionsController < Admin::BackendController
  
  def login
    if user_logged?
      redirect_to admin_students_path
    end
  end

  def validation

    user = User.authenticate params[:username], params[:password]
    
    logger.info "RESULTADO DE USER" + user.inspect

    if user
    
      sign_in user, 1
      if current_user.type_user == 0
        redirection_url = home_index_path
      else
        redirection_url = admin_students_path
      end
        
    else
      redirection_url = root_path
    end
    
    redirect_to redirection_url, notice: "Inicio session Correctamente"
   
  end

  def logout
    sign_out

    redirection_url = admin_log_in_path

    redirect_to redirection_url, notice: t('session.logged_out')
  end

end