class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :teaser
      t.integer :topic_id
      t.date :date
      t.time :time
      t.string :place
      t.string :link

      t.timestamps
    end
  end
end
