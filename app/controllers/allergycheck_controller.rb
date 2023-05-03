class AllergycheckController < ApplicationController
    def check
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

    def result
        puts params
        @members = Member.where(team_id: @current_team.id)
        if @members
            @members = @members.order(student_number: :asc)
        end

        @menu_bread_rice = Menu.find_by(id: params[:bread_rice])
        @menu_milk = Menu.find_by(id: params[:milk])
        @menu_large_side_dish = Menu.find_by(id: params[:large_side_dish])
        @menu_small_side_dish_1 = Menu.find_by(id: params[:small_side_dish_1])
        @menu_small_side_dish_2 = Menu.find_by(id: params[:small_side_dish_2])
        @menu_small_side_dish_3 = Menu.find_by(id: params[:small_side_dish_3])
        
    end
end
