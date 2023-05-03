class ApplicationController < ActionController::Base
    
    before_action :set_current_team
  
    def set_current_team
        @current_team = Team.find_by(id: session[:team_id])
    end

    def authenticate_team
        if @current_team == nil
            flash[:notice] = "ログインが必要です"
            redirect_to("/login")
        end
    end

    def forbid_login_team
        if @current_team
          flash[:notice] = "すでにログインしています"
          redirect_to("/top_menu")
        end
    end
    
end