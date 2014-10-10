class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :link
      t.string :category
      t.string :guid

      t.timestamps
    end
  end
end
