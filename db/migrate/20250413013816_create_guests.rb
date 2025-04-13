class CreateGuests < ActiveRecord::Migration[8.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.references :user, null: false, foreign_key: true
      t.string :email, null: false

      t.timestamps
    end
  end
end
