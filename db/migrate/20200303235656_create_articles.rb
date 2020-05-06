class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :teaser
      t.text :teaser_two
      t.integer :story_id

      t.timestamps
    end
  end
end
