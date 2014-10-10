class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :profession
      t.string :job_status
      t.string :language
      t.text :body
      t.string :location
      t.string :country
      t.string :picture

      t.timestamps
    end
  end
end
