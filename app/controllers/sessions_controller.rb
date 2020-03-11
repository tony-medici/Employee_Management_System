class SessionsController < ApplicationController

    def new

    end

    def create
        admin = Admin.find_by(username: params[:session][:username])

        if admin && admin.authenticate(params[:session][:password])
            session[:admin_id] = admin.id
            flash[:success] = "Welcome admin, how are you today"
            redirect_to employees_path
        else
            flash.now[:danger] = "There was something wrong with your login details, please try again"
            render 'new'
        end
    end

    def destroy

    end

end