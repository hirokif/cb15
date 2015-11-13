# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# 最新状態へ
# rake db:migrate
#
# リセット（データベースの中身が空っぽ）
# rake db:migrate:reset
#
# seedデータの読み込み
# rake db:seeed
#
# リセット＋シードデータの読み込み
# rake db:reset

require "csv"

CSV.foreach('db/tois.csv') do |row|
  Toi.create(:toi_no => row[0], :toi_name => row[1])
end

CSV.foreach('db/rois.csv') do |row|
  Roi.create(:roi_no => row[0], :roi_name => row[1], :toi_no => row[2])
end


