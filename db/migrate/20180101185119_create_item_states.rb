class CreateItemStates < ActiveRecord::Migration
  def change
    create_table :item_states do |t|
      t.integer :item_id
      t.integer :state_id

      t.timestamps

    end
  end
end
