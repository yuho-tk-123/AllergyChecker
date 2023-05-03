class MembersController < ApplicationController

  before_action :authenticate_team

  def index
    @members = Member.where(team_id: @current_team.id)
    if @members
      @members = @members.order(student_number: :asc)
    end
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(
      team_id: @current_team.id,
      student_number: params[:student_number],
      name: params[:name],
    )
    @member.shrimp = params[:shrimp] == "1"
    @member.crab = params[:crab] == "1"
    @member.walnuts = params[:walnuts] == "1"
    @member.wheat = params[:wheat] == "1"
    @member.buckwheat = params[:buckwheat] == "1"
    @member.egg = params[:egg] == "1"
    @member.milk = params[:milk] == "1"
    @member.peanuts = params[:peanuts] == "1"
    @member.almonds = params[:almonds] == "1"
    @member.abalone = params[:abalone] == "1"
    @member.squid = params[:squid] == "1"
    @member.salmon_roe = params[:salmon_roe] == "1"
    @member.orange = params[:orange] == "1"
    @member.cashews = params[:cashews] == "1"
    @member.kiwi_fruit = params[:kiwi_fruit] == "1"
    @member.beef = params[:beef] == "1"
    @member.sesame = params[:sesame] == "1"
    @member.salmon = params[:salmon] == "1"
    @member.mackerel = params[:mackerel] == "1"
    @member.soybeans = params[:soybeans] == "1"
    @member.chicken = params[:chicken] == "1"
    @member.banana = params[:banana] == "1"
    @member.pork = params[:pork] == "1"
    @member.matsutake_mushrooms = params[:matsutake_mushrooms] == "1"
    @member.peaches = params[:peaches] == "1"
    @member.yams = params[:yams] == "1"
    @member.apples = params[:apples] == "1"
    @member.gelatin = params[:gelatin] == "1"
    if @member.save
      flash[:notice] = "新規メンバーを登録しました"
      redirect_to("/members/index")
    else
      render("members/new")
    end
  end

  def show
    @member = Member.find_by(id: params[:id])
  end

  def edit
    @member = Member.find_by(id: params[:id])
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.student_number = params[:student_number]
    @member.name = params[:name]
    @member.shrimp = params[:shrimp] == "1"
    @member.crab = params[:crab] == "1"
    @member.walnuts = params[:walnuts] == "1"
    @member.wheat = params[:wheat] == "1"
    @member.buckwheat = params[:buckwheat] == "1"
    @member.egg = params[:egg] == "1"
    @member.milk = params[:milk] == "1"
    @member.peanuts = params[:peanuts] == "1"
    @member.almonds = params[:almonds] == "1"
    @member.abalone = params[:abalone] == "1"
    @member.squid = params[:squid] == "1"
    @member.salmon_roe = params[:salmon_roe] == "1"
    @member.orange = params[:orange] == "1"
    @member.cashews = params[:cashews] == "1"
    @member.kiwi_fruit = params[:kiwi_fruit] == "1"
    @member.beef = params[:beef] == "1"
    @member.sesame = params[:sesame] == "1"
    @member.salmon = params[:salmon] == "1"
    @member.mackerel = params[:mackerel] == "1"
    @member.soybeans = params[:soybeans] == "1"
    @member.chicken = params[:chicken] == "1"
    @member.banana = params[:banana] == "1"
    @member.pork = params[:pork] == "1"
    @member.matsutake_mushrooms = params[:matsutake_mushrooms] == "1"
    @member.peaches = params[:peaches] == "1"
    @member.yams = params[:yams] == "1"
    @member.apples = params[:apples] == "1"
    @member.gelatin = params[:gelatin] == "1"
    if @member.save
      flash[:notice] = "メンバー情報を編集しました"
      redirect_to("/members/#{@member.id}")
    else
      render("members/edit")
    end
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    @member.destroy
    flash[:notice] = "メンバーを削除しました"
    redirect_to("/members/index")
  end

end
