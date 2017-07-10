class CreateExaminations < ActiveRecord::Migration[5.1]
  def change
    create_table :examinations do |t|
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
