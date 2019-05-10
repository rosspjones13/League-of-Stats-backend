class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :champion_id
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.boolean :result
      t.timestamps
    end
  end
end
