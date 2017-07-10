class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :alias
      t.string :title
      t.string :description
      t.string :publication
      t.string :expermien_id
      t.string :analysis_id
      t.decimal :client_id
      t.decimal :collector_id
      t.decimal :user_id
      t.references:examinations , foreign_key: "true

      t.timestamps
    end
  end
end
