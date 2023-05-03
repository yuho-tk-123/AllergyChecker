class ChangeTeamsColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :password_digest, :string
    remove_column :teams, :password, :string
  end
end
