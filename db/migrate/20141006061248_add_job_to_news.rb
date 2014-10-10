class AddJobToNews < ActiveRecord::Migration
  def change
    add_column :news, :job, :integer
  end
end
