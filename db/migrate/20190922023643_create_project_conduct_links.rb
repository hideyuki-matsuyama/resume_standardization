class CreateProjectConductLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :project_conduct_links do |t|
      t.references :project, null: false
      t.references :conduct, null: false

      t.timestamps
    end
  end
end
