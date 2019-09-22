class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.text :introduction
      t.text :public_relation
      t.text :aspiration

      t.timestamps
    end
  end
end
