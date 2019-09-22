class CreateProjectEmploymentLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :project_employment_links do |t|
      t.references :project, null: false
      t.references :employment, null: false

      t.timestamps
    end
  end
end
