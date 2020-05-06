class CreateInstaTags < ActiveRecord::Migration[6.0]
  def change
    create_table :insta_tags do |t|
      t.string :name
      t.integer :moniitor_id

      t.timestamps
    end
  end
end
