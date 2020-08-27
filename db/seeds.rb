# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all

recipes = []
%w[
  絶対失敗しないマカロン
  簡単に作れる肉じゃが
  美味しいアイスポックスクッキー
  混ぜるだけ！ベイクドチーズケーキ
  真っ白レアチーズケーキ
  しっとりダックワーズ
  基本のプレーンマフィン
  豆腐ドーナツ
  いつもの唐揚げ
  時間外フィナンシェ
].each do |recipe_title|
  recipes << Recipe.create!(
    title: recipe_title,
    kind: 0, # 主菜
    steps_attributes: rand(1..4).times.map do |i|
      { description: "手順 #{i + 1}", position: i }
    end,
    ingredients_attributes: rand(1..4).times.map do |i|
      { name: "材料 #{i + 1}", quantity: "#{i * 10}g" }
    end
  )
end
