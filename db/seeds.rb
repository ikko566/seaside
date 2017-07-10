# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p1=Project.create( :alias => '睡眠×ビオフェルミン001', :title => 'ビオフェルミン001', :description => 'プロジェクトの説明', :publication => 'Ver001')
e1=p1.examinations.create( :project_id => 1 )
s1=e1.samples.create( :examination_id => 1, :title => 'がん検診001', :define_at => '2015/4/3 10:40' )
s1.sample_metadata_numerical.create( :predicate_numerical => '睡眠時間001', :value => '10003')


p2=Project.create( :alias => '身長×悪玉コレステロール002', :title => 'タイトル002', :description => 'プロジェクトの説明', :publication => 'Ver001')
e2=p2.examinations.create( :project_id => 2)
s2=e2.samples.create(  :title => 'がん検診002 1/2', :define_at => '2015/4/3 10:40' )
s3=e2.samples.create(  :title => '健康診断002 2/2', :define_at => '2015/5/7 10:40' )
s2.sample_metadata_numerical.create( :predicate_numerical => '大腸菌002 1/1', :value => '13.5' )
s3.sample_metadata_numerical.create( :predicate_numerical => '大腸菌003 1/2', :value => '13.5' )
s3.sample_metadata_numerical.create( :predicate_numerical => '大腸菌004 2/2', :value => '13.5' )

#Project.create( :alias => '睡眠×大腸菌002',         :title => '大腸菌影響002', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名004', :title => 'タイトル004', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名005', :title => 'タイトル005', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名006', :title => 'タイトル006', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名007', :title => 'タイトル007', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名008', :title => 'タイトル008', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名009', :title => 'タイトル009', :description => 'プロジェクトの説明', :publication => 'Ver001')
#Project.create( :alias => '別名010', :title => 'タイトル010', :description => 'プロジェクトの説明', :publication => 'Ver001', :expermien_id => '1' ,:analysis_id => '10', :client_id => '30', :collector_id => '55', :user_id => '45')
#Examination.create( :project_id => 1 )
##Sample.create( :examination_id => 1, :title => 'がん検診', :define_at => '2015/4/3 10:40' )
#SampleMetadataNumerical.create( :predicate_numerical => '大腸菌', :value => '13.5', :sample_id => 1)
#SampleMetadataNumerical.create( :predicate_numerical => 'ラクト菌', :value => '13.5', :sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Bacteroides',:value => '0.663712863686918',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Alistipes',:value => '0.182645777685529',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Parabacteroides',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Akkermansia',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Faecalibacterium',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Eubacterium',:value => '13.5',:sample_id => 1)
##SampleMetadataNumerical.create(:predicate_numerical => 'Roseburia',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Odoribacter',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Sutterella',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Blautia',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Clostridium',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Ruminococcus',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Haemophilus',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Prevotella',:value => '13.5',:sample_id => 1)
##SampleMetadataNumerical.create(:predicate_numerical => 'Coprococcus',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Dorea',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Pseudoflavonifractor',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Bifidobacterium',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Anaerotruncus',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Streptococcus',:value => '13.5',:sample_id => 1)
###SampleMetadataNumerical.create(:predicate_numerical => 'Veillonella',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Paraprevotella',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Victivallis',:value => '13.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Collinsella',:value => '13.3',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Acidaminococcus',:value => '43.5',:sample_id => 1)
##SampleMetadataNumerical.create(:predicate_numerical => 'Holdemania',:value => '23.5',:sample_id => 1)
#SampleMetadataNumerical.create(:predicate_numerical => 'Others',:value => '100.5',:sample_id => 1)


