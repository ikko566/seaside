require 'csv'
class Project < ApplicationRecord
  has_many :examinations

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|

        project = new
        project.attributes = row.to_hash.slice(*updatable_attributes)

        project.save!

      end
    end

  def self.updatable_attributes
    ["alias","title","description","publication","expermien_id","analysis_id","client_id","collector_id","user_id"]
  end

end
