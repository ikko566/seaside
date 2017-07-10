class Examination < ApplicationRecord
  belongs_to :project
  has_many :samples
end
