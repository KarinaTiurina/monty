class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.integer :num_change
      t.integer :num_change_won
      t.integer :num_not_change
      t.integer :num_not_change_won

      t.timestamps
    end
  end
end
