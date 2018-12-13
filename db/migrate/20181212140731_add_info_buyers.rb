class AddInfoBuyers < ActiveRecord::Migration[5.2]
  def change
    add_column :buyers, :email, :string
    add_column :buyers, :password_digest, :string
    add_column :buyers, :first_name, :string
    add_column :buyers, :last_name, :string
    add_column :buyers, :sex, :string
    add_column :buyers, :birthday, :date
  end
end
