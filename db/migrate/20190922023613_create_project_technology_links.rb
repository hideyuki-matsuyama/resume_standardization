class CreateProjectTechnologyLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :project_technology_links do |t|
      t.references :project, null: false
      t.references :technology, null: false

      t.timestamps
    end
  end
end
