class TeamsController < ApplicationController

  before_action :authenticate_team, {only: [:logout, :show, :edit, :update, :destroy]}
  before_action :forbid_login_team, {only: [:login_form, :login, :new, :create]}
  
  def login_form
  end

  def login
    @team = Team.find_by(team_id: params[:team_id])
    if @team && @team.authenticate(params[:password])
      session[:team_id] = @team.id
      flash[:notice] = "ログインしました"
      redirect_to("/top_menu")
    else
      @error_message = "チームidまたはパスワードが間違っています"
      @team_id = params[:team_id]
      @password = params[:password]
      render("teams/login_form")
    end
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(
      name: params[:name],
      team_id: params[:team_id],
      password: params[:password]
    )
    if @team.save
      session[:team_id] = @team.id
      flash[:notice] = "新規チーム登録が完了しました"
      redirect_to("/top_menu")
    else
      render("teams/new")
    end
  end

  def logout
    session[:team_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

  def show
    @team = Team.find_by(id: params[:id])
  end

  def edit
    @team = Team.find_by(id: params[:id])
  end

  def update
    @team = Team.find_by(id: params[:id])
    @team.name = params[:name]
    @team.team_id = params[:team_id]
    
    if @team.save
      flash[:notice] = "チーム情報を編集しました"
      redirect_to("/teams/#{@team.id}")
    else
      render("teams/edit")
    end
  end

  def destroy
    @menus = Menu.where(team_id: params[:id])
    @menus.destroy_all
    @members = Member.where(team_id: params[:id])
    @members.destroy_all
    @team = Team.find_by(id: params[:id])
    @team.destroy
    session[:team_id] = nil
    flash[:notice] = "チームを削除しました"
    redirect_to("/")
  end


end
