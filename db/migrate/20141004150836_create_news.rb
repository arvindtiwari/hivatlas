class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :hiv_atlas_daily_digest
      t.string :latest_job_weekly
      t.string :new_classified_adds_weekly

      t.timestamps
    end
  end
end
