class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :subject
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
