class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.references :examination, foreign_key: true
      t.string :title
      t.datetime :define_at

      t.timestamps
    end
  end
end
