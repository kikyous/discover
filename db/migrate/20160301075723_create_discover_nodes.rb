class CreateDiscoverNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :discover_nodes do |t|
      t.string :name

      t.timestamps
    end
  end
end