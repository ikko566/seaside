class CreatePredicateNumericals < ActiveRecord::Migration[5.1]
  def change
    create_table :predicate_numericals do |t|
      t.string :name
      t.string :unit
      t.float :min
      t.float :max
      t.references :sample_metadata_numerical, foreign_key: true

      t.timestamps
    end
  end
end
