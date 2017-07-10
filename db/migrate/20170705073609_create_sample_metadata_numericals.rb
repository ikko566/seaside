class CreateSampleMetadataNumericals < ActiveRecord::Migration[5.1]
  def change
    create_table :sample_metadata_numericals do |t|
      t.string :predicate_numerical
      t.float :value
      t.references :sample, foreign_key: true

      t.timestamps
    end
  end
end
