class AddEmailToNews < ActiveRecord::Migration
  def change
    add_column :news, :email, :string
  end
end
