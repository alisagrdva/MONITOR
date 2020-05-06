class CreateMoniitors < ActiveRecord::Migration[6.0]
  def change
    create_table :moniitors do |t|
      t.string :title

      t.timestamps
    end
  end
end
