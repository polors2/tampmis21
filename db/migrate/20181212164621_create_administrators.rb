class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :sex
      t.date :birthday
      t.string :password_digest

      t.timestamps
    end
  end
end
