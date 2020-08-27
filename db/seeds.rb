# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: Star Wars }, { name: Lord of the Rings }])
#   Character.create(name: Luke, movie: movies.first)
Recipe.destroy_all

oven_dishes = %w[
  サザエのエスカルゴ風オーブン焼き 
  グルメオーブンで御飯炊き
  チキンのオーブン焼き(ハニーマスタード)
  オーブン不用焼かないオートミールクッキー
  ダッチオーブンでバーベキューチキン
  志麻さんの夏野菜のオーブン焼き
  マダイの香味オーブン焼き
  オーブンで簡単♪揚げない厚揚げ豆腐カツ
  マッシュポテトの重ねオーブン焼き
  長芋と卵のオーブン焼き
]

main_dishes = %w[
ざる  きつね  たぬき  とろろ  かけ  玉子  鴨  山菜  わかめ  天ぷら  かき揚げ    
きつね  たぬき  かけ  玉子  肉  山菜  わかめ  ちから  カレー  天ぷら  かき揚げ  煮込み  冷やし    そう麺・冷麦  
しじみ  あさり  わかめ  大根  豆腐  油揚げ  なめこ  豚汁  けんちん汁    お吸物  
梅干  おかか  昆布  たらこ  明太子  鮭  ツナマヨ  高菜  五目  魚系  肉系    
牛丼  かつ丼  うな丼  天丼  親子丼  玉子丼  海鮮丼  そぼろご飯  お茶漬け  
かやくご飯  竹の子ご飯  釜飯  栗ご飯  雑炊    
にぎり  ちらし  いなり  太巻き  干瓢  納豆  鉄火  ねぎとろ  かっぱ  茶巾  の巻物  
えび(中)  えび(大)  いか  ちくわ  かぼちゃ  なす  さつま芋  ししとう  しいたけ  いんげん  青じそ  かき揚げ(中)  かき揚げ(大)  天かす    
おでん  筑前煮  ひじき煮  切干大根煮  肉じゃが  きんぴら  五目豆煮  卯の花    
すき焼き  かき鍋  しゃぶしゃぶ  湯豆腐  寄せ鍋  ちゃんこ  たらちり  キムチ鍋  ジンギスカン    
煮魚  焼魚  刺身  から揚げ  照り焼き  南蛮漬け  西京漬  
焼き鳥  しょうが焼き  から揚げ  照り焼き  南蛮漬け  もつ煮  ホルモン  
白あえ  胡麻あえ  お浸し  酢の物  ぬた(酢味噌)  田楽  おろし和え  塩もみ/浅漬け  
茶碗蒸し  玉子焼き  玉子とじ  目玉焼き  
冷奴  揚出し豆腐  炒り豆腐  納豆  厚揚げ焼  豆腐ハンバーグ  胡麻豆腐  
お雑煮  餅料理  ゴーヤチャンプル  とろろ  松前漬  
わらび餅  すあま  おはぎ  大学芋  ところてん  おしるこ  あんみつ  かき氷
パスタ ミートソース  ペスカトーレ  ボンゴレ  カルボナーラ  たらこ  ペペロンチーノ  ナポリタン  きのこ  -トマトソース  -ホワイトソース  -和風    
ピザ    
グラタン マカロニ  ラザニア    
ピラフ  オムライス  ドリア  カレー  ドライカレー  ハヤシ  リゾット  パエリア  
シチュー  クリームシチュー  ロールキャベツ  ポトフ  ラタトゥイユ  チリビーンズ  
とんかつ  ひれかつ  串かつ  メンチかつ  チキンかつ  かき  えび  あじ  いわし  白身魚  イカリング  フライドチキン  チキンナゲット  -大  -小  
コロッケ  カニクリーム  (芋)  (クリーム)  
ハンバーグ  肉のソテー  魚のムニエル  カルパッチョ  魚貝のバター炒め  オムレツ  キッシュ  マリネ  
野菜のソテー  きのこのソテー  人参のグラッセ  じゃがバター  
サンドイッチ ハム  玉子  チーズ  野菜  かつ  ポテトサラダ  ツナ    
トースト ピザトースト  フレンチトースト  のトースト  
ハンバーガー  カレーパン  焼きそばパン  コロッケパン  ホットドッグ  
マフィン  ベーグル  蒸しパン  スコーン  メロンパン
野菜  ポテト  マカロニ  ごぼう  かぼちゃ  和風  ツナ  コールスロー  外食小鉢    
ミネストローネ  クラムチャウダー  野菜  コーン  かぼちゃ  ポタージュ  コンソメ系  
ベイクドケーキ チーズケーキ チーズ(スフレ)  モンブラン  チョコレート  ミルフィーユ  スイートポテト  バームクーヘン  ロールケーキ  ムース  クレープ  ホットケーキ  クッキー  アイスクリーム  パフェ 
春雨酢  
ラーメン 醤油  味噌  塩  冷し  チャンポン  皿うどん  
広東麺  あんかけ焼きそば  味噌()  担々麺  タンメン  ジャージャー麺    
チャーハン  ちまき  おかゆ  天津丼  
餃子(大判)  餃子(中)  肉焼売  えび焼売  かに焼売  春巻き  
酢豚  麻婆豆腐  チンジャオロース  八宝菜  回鍋肉  エビチリ  かに玉  青菜炒め  野菜炒め  レバニラ  豚の角煮  肉団子    
具なし  玉子  野菜  ワンタン  ふかひれ    
クラゲ酢  棒々鶏  
杏仁豆腐  ココナッツミルク  マンゴープリン  
焼肉  ビビンバ  チゲ  わかめスープ  冷麺  ナムル  きゅうりのキムチ  チヂミ  
お好み焼  お好み焼(広島)  焼きそば  焼きうどん  たこ焼き  もんじゃ  
インド インドカレー  キーマカレー  サモサ  タンドリーチキン  
アジア トムヤンクン  タイカレー  焼きビーフン  生春巻  
タコス  
コーヒー  紅茶  ココア  シェイク  ジュース(ミルク入り)

]

side_dishes = %w[
お弁当にレンジで簡単おかず＊一口肉じゃが
レンジで5分☆鶏の柔らか煮
お弁当にも◎レンジで5分！簡単ネギ塩鶏
簡単５分☆レンジで手作りソーセージ
お弁当にも☆レンジでウインナーピラフ
レンジで簡単＊豆腐とちくわのシュウマイ
レンジで♪鶏胸肉のオニオンカレーソース
１０分！レンジで豚肉のとろりん生姜味噌煮
レンジで時短♫　簡単美味！　楽うま豚丼♡
レンジで簡単！ふわふわ豆腐入り肉団子
レンジで簡単！ふわふわシュウマイ
レンジで本格甘酢鶏
レンジでおかず＊豚肉と韮もやしのピリ辛
レンジで簡単＊すき焼き風うどん
電子レンジで☆お手軽そぼろご飯
ガス不要！レンチン任せのベーコンポテト♡
レンジで簡単♪エリンギのチーズ蒸し
レンジだけ♫簡単すぎる しいたけの甘辛煮
レンジで簡単♪鶏チャーシュー
10分で完成♡レンジでよだれ鶏
レタスの豚しゃぶ巻き☆レンジ蒸し
あと一品☆レンジで簡単　かぼちゃの煮物
レンジで簡単♪もやしとニラの胡麻マヨ和え
レンジで簡単☆舞茸と人参の塩きんぴら
鶏チャーシューBBQソース
レンジ４分★柔らか鶏むね肉のよだれ鶏。
レンジ５分！新じゃが☆キムチマヨチーズ
小松菜の胡麻和え♪レンジで簡単♪
☘豚挽肉と大根のレンジ煮☘
茄子と厚揚げのさっぱりレンジ蒸し
レンジで簡単！豚肉と青梗菜のピリ辛蒸し
レンチン茄子とひき肉チーズ簡単
レンジで簡単！春キャベツの塩バター蒸し
レンジで作る超簡単★ニンジングラッセ
レンジで簡単♡豚キムチ
レンジで簡単☆ささみと豆苗やみつきサラダ
レンジで簡単★豚キムチ焼きそば
簡単！電子レンジdeチーズインハンバーグ
レンジで簡単♪鶏の味噌チャーシュー
青梗菜のおひたし生姜風味
レンジで簡単！ちくわピーマンの甘辛煮
レンジで鶏の甘酢煮込み[あと出しごはん]
レンジで簡単！ニラとえのきのナムル
レンジで楽メイン！豚ばらミルフィーユ大根
レンジで簡単☆豚バラ肉の生姜巻き
レンジで簡単♡豚バラでミルフィーユ
簡単*レンチン！豆苗豚バラ巻き♡
節約♪ネギとカニカマでうまうま甘酢豆腐
レンジで簡単副菜＊ピーマンの煮浸し＊
レンジで時短！かぼちゃのチーズ焼き
レンジで簡単♪粉なし！豆腐入りお好み焼き
レンジで！胸ひき肉のミートローフ
レンジで簡単♪キャベツとさつま揚げの梅煮
レンジで簡単♪豚肉と小松菜のみぞれ煮
レンジで簡単！じゃがいもピザ
レンジチキンライス
レンジで簡単☆牛蒡と小松菜のデリサラダ。
すぐ出来る！レンジで豚の角煮
レンジでニラとモヤシの簡単豚しゃぶ
鶏ひき肉のヘルシーレンジ蒸し
レンジで５分！かぼちゃの煮物
超時短‼レンジ２分で高野豆腐と葱の含め煮
レンジで簡単☆ご飯のお供に・無限ネギ。
豆腐&卵のドーム型ヘルシーお好み焼き♡
簡単♪甘塩鮭と長葱のレンジ蒸し
レンジで簡単☆トマトリゾット
レンジで簡単メイン☆肉味噌キャベツ。
タラと小松菜のゴマだれレンジ蒸し
10分で完成♡さわらのレンジ蒸し♪
時短！豚肉・ピーマン・パプリカ青椒肉絲♬
レンジでヘルシー♪胸肉の大葉梅肉ロール♪
レンジで✩新玉ねぎトロンの豚しゃぶ巻き
超簡単レンジで ニラ玉豆腐茶碗蒸し
ひき肉とお豆腐のあったかレンジ蒸し
レンジで簡単☆辛くない和風麻婆豆腐。
豚肉・白菜・長ねぎレンジ蒸し♪梅風味
レンジでチンだけ！簡単おかず♡チャプチェ
レンジでイタリアンなトマトと茄子のサラダ
]

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

main_dishes.each do |recipe_title|
  all_ingredients = [group_1.sample, group_2.sample, group_3.sample, group_4.sample, group_5.sample, group_6.sample]
  recipes << Recipe.create!(
    title: recipe_title,
    kind: 0, # 主菜
    steps_attributes: rand(1..4).times.map do |i|
      { description: "手順 #{i + 1}", position: i }
    end,
    ingredients_attributes: 4.times.map do |i|
      { name: all_ingredients.sample, quantity: "#{i * 10}g" }
    end
  )
end

side_dishes.each do |recipe_title|
  all_ingredients = [group_1.sample, group_2.sample, group_3.sample, group_4.sample, group_5.sample, group_6.sample]
  recipes << Recipe.create!(
    title: recipe_title,
    kind: 1, # レンジ
    steps_attributes: rand(1..4).times.map do |i|
      { description: "手順 #{i + 1}", position: i }
    end,
    ingredients_attributes: 4.times.map do |i|
      { name: all_ingredients.sample, quantity: "#{i * 10}g" }
    end
  )
end

side_dishes.each do |recipe_title|
  all_ingredients = [group_1.sample, group_2.sample, group_3.sample, group_4.sample, group_5.sample, group_6.sample]
  recipes << Recipe.create!(
    title: recipe_title,
    kind: 2, # オーブン
    steps_attributes: rand(1..4).times.map do |i|
      { description: "手順 #{i + 1}", position: i }
    end,
    ingredients_attributes: 4.times.map do |i|
      { name: all_ingredients.sample, quantity: "#{i * 10}g" }
    end
  )
end
