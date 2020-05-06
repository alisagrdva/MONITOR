class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.text :teaser
      t.text :teaser_two
      t.integer :post_id

      t.timestamps
    end
  end
end
