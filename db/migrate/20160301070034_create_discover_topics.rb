class CreateDiscoverTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :discover_topics do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :openid
      t.integer :replies_count

      t.datetime :replied_at

      t.timestamps
    end
  end
end
