class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :event_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
