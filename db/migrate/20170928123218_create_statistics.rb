class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.integer :num_change, :default => 0
      t.integer :num_change_won, :default => 0
      t.integer :num_not_change, :default => 0
      t.integer :num_not_change_won, :default => 0

      t.timestamps
    end
  end
end
