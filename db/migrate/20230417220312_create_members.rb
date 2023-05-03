class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.integer :team_id
      t.integer :student_number
      t.string :name
      t.boolean :shrimp
      t.boolean :crab
      t.boolean :walnuts
      t.boolean :wheat
      t.boolean :buckwheat
      t.boolean :egg
      t.boolean :milk
      t.boolean :peanuts
      t.boolean :almonds
      t.boolean :abalone
      t.boolean :squid
      t.boolean :salmon_roe
      t.boolean :orange
      t.boolean :cashews
      t.boolean :kiwi_fruit
      t.boolean :beef
      t.boolean :sesame
      t.boolean :salmon
      t.boolean :mackerel
      t.boolean :soybeans
      t.boolean :chicken
      t.boolean :banana
      t.boolean :pork
      t.boolean :matsutake_mushrooms
      t.boolean :peaches
      t.boolean :yams
      t.boolean :apples
      t.boolean :gelatin

      t.timestamps
    end
  end
end
