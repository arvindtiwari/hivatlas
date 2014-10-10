class CreateIecs < ActiveRecord::Migration
  def change
    create_table :iecs do |t|
      t.string :title
      t.string :body
      t.string :language
      t.string :location

      t.timestamps
    end
  end
end
