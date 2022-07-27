class SessionsController <ApplicationController 

    def new 
        user = User.find_by(username: params[:user_name])
        if user.authenticate(params[:password])
            session[:user_id] = user.id 
            flash[:success] = "Welcome #{user.username}!"
            redirect_to root_path
        else 
            flash[:success] = "Welcome #{user.username}!"
            redirect_to "/login"
        end 
    end 

    def logout
        session[:user_id].destroy 
        redirect_to root_path
    end 
end 