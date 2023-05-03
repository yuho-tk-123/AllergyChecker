class MenusController < ApplicationController

  before_action :authenticate_team
  
  def index
    @menus_bread_rice = Menu.where(team_id: @current_team.id, division: "bread_rice")
    if @menus_bread_rice
      @menus_bread_rice = @menus_bread_rice.order(name: :asc)
    end

    @menus_milk = Menu.where(team_id: @current_team.id, division: "milk")
    if @menus_milk
      @menus_milk = @menus_milk.order(name: :asc)
    end

    @menus_large_side_dish = Menu.where(team_id: @current_team.id, division: "large_side_dish")
    if @menus_large_side_dish
      @menus_large_side_dish = @menus_large_side_dish.order(name: :asc)
    end

    @menus_small_side_dish = Menu.where(team_id: @current_team.id, division: "small_side_dish")
    if @menus_small_side_dish
      @menus_small_side_dish = @menus_small_side_dish.order(name: :asc)
    end
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(
      team_id: @current_team.id,
      name: params[:name],
    )
    @menu.division = params[:division]
    @menu.shrimp = params[:shrimp] == "1"
    @menu.crab = params[:crab] == "1"
    @menu.walnuts = params[:walnuts] == "1"
    @menu.wheat = params[:wheat] == "1"
    @menu.buckwheat = params[:buckwheat] == "1"
    @menu.egg = params[:egg] == "1"
    @menu.milk = params[:milk] == "1"
    @menu.peanuts = params[:peanuts] == "1"
    @menu.almonds = params[:almonds] == "1"
    @menu.abalone = params[:abalone] == "1"
    @menu.squid = params[:squid] == "1"
    @menu.salmon_roe = params[:salmon_roe] == "1"
    @menu.orange = params[:orange] == "1"
    @menu.cashews = params[:cashews] == "1"
    @menu.kiwi_fruit = params[:kiwi_fruit] == "1"
    @menu.beef = params[:beef] == "1"
    @menu.sesame = params[:sesame] == "1"
    @menu.salmon = params[:salmon] == "1"
    @menu.mackerel = params[:mackerel] == "1"
    @menu.soybeans = params[:soybeans] == "1"
    @menu.chicken = params[:chicken] == "1"
    @menu.banana = params[:banana] == "1"
    @menu.pork = params[:pork] == "1"
    @menu.matsutake_mushrooms = params[:matsutake_mushrooms] == "1"
    @menu.peaches = params[:peaches] == "1"
    @menu.yams = params[:yams] == "1"
    @menu.apples = params[:apples] == "1"
    @menu.gelatin = params[:gelatin] == "1"
    if @menu.save
      flash[:notice] = "新規メニューを登録しました"
      redirect_to("/menus/index")
    else
      render("menus/new")
    end
  end

  def show
    @menu = Menu.find_by(id: params[:id])
  end

  def edit
    @menu = Menu.find_by(id: params[:id])
  end

  def update
    @menu = Menu.find_by(id: params[:id])
    @menu.name = params[:name]
    @menu.division = params[:division]
    @menu.shrimp = params[:shrimp] == "1"
    @menu.crab = params[:crab] == "1"
    @menu.walnuts = params[:walnuts] == "1"
    @menu.wheat = params[:wheat] == "1"
    @menu.buckwheat = params[:buckwheat] == "1"
    @menu.egg = params[:egg] == "1"
    @menu.milk = params[:milk] == "1"
    @menu.peanuts = params[:peanuts] == "1"
    @menu.almonds = params[:almonds] == "1"
    @menu.abalone = params[:abalone] == "1"
    @menu.squid = params[:squid] == "1"
    @menu.salmon_roe = params[:salmon_roe] == "1"
    @menu.orange = params[:orange] == "1"
    @menu.cashews = params[:cashews] == "1"
    @menu.kiwi_fruit = params[:kiwi_fruit] == "1"
    @menu.beef = params[:beef] == "1"
    @menu.sesame = params[:sesame] == "1"
    @menu.salmon = params[:salmon] == "1"
    @menu.mackerel = params[:mackerel] == "1"
    @menu.soybeans = params[:soybeans] == "1"
    @menu.chicken = params[:chicken] == "1"
    @menu.banana = params[:banana] == "1"
    @menu.pork = params[:pork] == "1"
    @menu.matsutake_mushrooms = params[:matsutake_mushrooms] == "1"
    @menu.peaches = params[:peaches] == "1"
    @menu.yams = params[:yams] == "1"
    @menu.apples = params[:apples] == "1"
    @menu.gelatin = params[:gelatin] == "1"
    if @menu.save
      flash[:notice] = "メニュー情報を編集しました"
      redirect_to("/menus/#{@menu.id}")
    else
      render("menus/edit")
    end
  end

  def destroy
    @menu = Menu.find_by(id: params[:id])
    @menu.destroy
    flash[:notice] = "メニューを削除しました"
    redirect_to("/menus/index")
  end
end
