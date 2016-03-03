class CreateDiscoverReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :discover_replies do |t|
      t.integer :topic_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
