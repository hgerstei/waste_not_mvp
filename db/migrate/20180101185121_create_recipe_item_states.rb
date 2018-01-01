class CreateRecipeItemStates < ActiveRecord::Migration
  def change
    create_table :recipe_item_states do |t|
      t.integer :recipe_id
      t.integer :item_state_id
      t.text :description

      t.timestamps

    end
  end
end
