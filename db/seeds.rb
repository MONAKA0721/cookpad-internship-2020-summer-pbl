# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: Star Wars }, { name: Lord of the Rings }])
#   Character.create(name: Luke, movie: movies.first)
Recipe.destroy_all

recipes = []
def group_1
    ['ごはん', 'パン', 'じゃがいも', 'うどん']
end

def group_2
    ['りんご', 'すいか', 'みかん', '柿', 'バナナ']
end

def group_3
    ['たこ', '卵', '肉', 'チーズ', '大豆']
end

def group_4
    ['牛乳', 'ヨーグルト']
end

def group_5
    ['マヨネーズ', 'ベーコン', 'ピーナッツ']
end

def group_6
    ['大根', 'ねぎ', 'もやし']
end
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
  all_ingredients = [group_1.sample, group_2.sample, group_3.sample, group_4.sample, group_5.sample, group_6.sample]
  recipes << Recipe.create!(
    title: recipe_title,
    kind: 0, # 主菜
    steps_attributes: rand(1..4).times.map do |i|
      { description: "手順 #{i + 1}", position: i }
    end,
    ingredients_attributes: 5.times.map do |i|
      { name: all_ingredients.sample, quantity: "#{i * 10}g" }
    end
  )
end
