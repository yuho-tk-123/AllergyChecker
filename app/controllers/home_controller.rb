class HomeController < ApplicationController
  before_action :authenticate_team, {only: [:top_menu]}
  before_action :forbid_login_team, {only: [:top, :about]}

  def top
  end

  def about
  end

  def top_menu
  end

end
