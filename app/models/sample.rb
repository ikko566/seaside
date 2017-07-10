class Sample < ApplicationRecord
  belongs_to :examination
  has_many :sample_metadata_numerical
end
