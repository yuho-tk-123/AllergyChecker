class AddDivisionToMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :division, :string
  end
end
