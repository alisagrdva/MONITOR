class CreateInstaAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :insta_accounts do |t|
      t.string :name
      t.integer :moniitor_id

      t.timestamps
    end
  end
end
