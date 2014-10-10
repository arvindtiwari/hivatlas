class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :email_address
      t.date   :deadline_date
      t.text   :discription
      t.string :city
      t.string :state
      t.string :country
      t.string :picture

      t.timestamps
    end
  end
end
