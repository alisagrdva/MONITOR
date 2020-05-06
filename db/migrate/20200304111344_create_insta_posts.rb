class CreateInstaPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :insta_posts do |t|
      t.integer :moniitor_id
      t.integer :insta_account_id
      t.integer :insta_tag_id

      t.timestamps
    end
  end
end
