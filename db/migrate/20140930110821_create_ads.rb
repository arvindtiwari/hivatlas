class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :add_title
      t.string :category
      t.string :state
      t.string :country
      t.text :add_text
      t.string :picture

      t.timestamps
    end
  end
end
