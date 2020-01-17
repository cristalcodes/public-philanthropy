class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :organization_id
      t.decimal :amount, precision: 10, scale: 2
      t.string :honoree
      t.text :comments

      t.timestamps
    end
  end
end
