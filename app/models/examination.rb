class Examination < ApplicationRecord
  belongs_to :project
  has_many :samples

    def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # 登録する プロジェクトと検査（examination)を見つける
#      project = Project.where( title: row["projecttitle"])
#      @examination=Examination.where( project_id  project.id)
      @sample=Sample.where( id: row["sample_id"] )

      
      @metadata=SampleMetadataNumerical.new
      @metadata.predicate_numerical = row["predicate_numerical"]
      @metadata.value = row["value"]
      @metadata.sample_id = @sample.ids




#      project.each do | exm |
      
#      product = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
#      product.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
#      product.save!
    end
    end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["project_id","sample_id","predicate_numerical","value"]
  end



end
