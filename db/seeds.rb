# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create([name: 'Luke', movie: movies.first)

# Categoryテーブル
# 階層の深さ = 0
bgm, se, voice, vocal = Category.create([{name: "bgm"}, {name: "se"}, {name: "voice"}, {name: "vocal"}])

# 階層の深さ = 1
use, instrument, genre, image = bgm.children.create([{name: "用途"}, {name: "楽器"}, {name: "ジャンル"}, {name: "イメージ"}])

# 階層の深さ = 2
drama, video, game, geme_music, wedding, event, store = use.children.create([
  {name: "劇"},
  {name: "映像"},
  {name: "ゲーム"},
  {name: "ゲーム内音楽"},
  {name: "結婚式"},
  {name: "イベント"},
  {name: "店舗・施設"}
])

instrument.children.create([
  {name: "鍵盤楽器"},
  {name: "ギター・ベース"},
  {name: "管楽器"},
  {name: "和楽器"},
  {name: "電子楽器"},
  {name: "民族楽器"},
  {name: "パーカッション"}
])

genre.children.create([
  {name: "ポップ"},
  {name: "ロック"},
  {name: "ジャズ"},
  {name: "クラブ・電子系"},
  {name: "クラシック風"},
  {name: "ワールド"},
  {name: "ムード"},
  {name: "クラシック音楽・アレンジ"},
  {name: "童謡・民謡"},
  {name: "ミニマル"},
  {name: "フュージョン"},
  {name: "ファンク"}
])

seasons, feeling, atmosphere, work, oneday, place = image.children.create([
  {name: "季節"},
  {name: "感情・フィーリング"},
  {name: "雰囲気"},
  {name: "仕事"},
  {name: "一日"},
  {name: "場所"}
])

# 階層の深さ 3
drama.children.create([
  {name: "時代劇"},
  {name: "ミュージカル"}
])

video.children.create([
  {name: "映画"},
  {name: "アニメ"},
  {name: "CM"},
  {name: "サウンドロゴ"},
  {name: "ジングル"},
  {name: "企業VP"},
  {name: "ドキュメンタリー"},
  {name: "天気予報"},
  {name: "スポーツ"},
  {name: "ニュース"},
  {name: "料理"},
  {name: "サスペンス"},
  {name: "バラエティ"},
  {name: "ショッピング"},
  {name: "エンドロール"},
  {name: "昔話"}
])

game.children.create([
  {name: "パズルゲーム"},
  {name: "シューティングゲーム"},
  {name: "育成ゲーム"},
  {name: "戦闘ゲーム"},
  {name: "RPGゲーム"},
  {name: "格闘ゲーム"},
  {name: "アクションゲーム"},
  {name: "知育ゲーム"},
  {name: "レースゲーム"},
  {name: "ホラーゲーム"},
  {name: "FPS"},
  {name: "クイズ"}
])

geme_music.children.create([
  {name: "悪役登場"},
  {name: "ラスボス"},
  {name: "勝利"},
  {name: "戦い"}
])

wedding.children.create([
  {name: "感動シーン"},
  {name: "結婚式入場"},
  {name: "プロフィールビデオ"},
  {name: "歓談"}
])

event.children.create([
  {name: "誕生日・バースデー"},
  {name: "運動会・スポーツ大会"},
  {name: "クリスマス"},
  {name: "バレンタイン"},
  {name: "オープニング"},
  {name: "エンディング"},
  {name: "入場"},
  {name: "退場"},
  {name: "卒業"},
  {name: "七夕"},
  {name: "表彰式"},
  {name: "お正月"},
  {name: "出囃子"},
  {name: "シンキングタイム"},
  {name: "結果発表"},
  {name: "カウントダウン"},
  {name: "お祭り"},
  {name: "手品(マジック)"},
  {name: "サーカス"}
])

store.children.create([
  {name: "アミューズメント施設"},
  {name: "カフェ・レストラン店舗"},
  {name: "カジノ"},
  {name: "神社"}
])

seasons.children.create([
  {name: "春"},
  {name: "夏"},
  {name: "秋"},
  {name: "冬"},
  {name: "ハロウィン"}
])

feeling.children.create([
  {name: "楽しい"},
  {name: "悲しい"},
  {name: "切ない"},
  {name: "怖い"},
  {name: "怒り"},
  {name: "わくわく"},
  {name: "ドッキリ"},
  {name: "お笑い"},
  {name: "かっこいい"},
  {name: "ノリノリ"}
])

violent, gentle, dark, strange, romantic, fantagy, excitement, illusion, future, \
tention, nervous, tension, magnificent, uptempo, slow, boost, mistery, somethingelse \
= atmosphere.children.create([
  {name: "激しい"},
  {name: "穏やか・明るい"},
  {name: "暗い"},
  {name: "奇妙"},
  {name: "ロマンチック"},
  {name: "ファンタジー"},
  {name: "感動的"},
  {name: "幻想的"},
  {name: "近未来的"},
  {name: "緊張感"},
  {name: "緊迫"},
  {name: "壮大"},
  {name: "アップテンポ"},
  {name: "ゆっくり"},
  {name: "盛り上がる"},
  {name: "ミステリー"},
  {name: "その他"}
])

work.children.create([
  {name: "プレゼン(スライドショー)"}
])

oneday.children.create([
  {name: "朝"},
  {name: "昼"},
  {name: "夜"}
])

place.children.create([
  {name: "宇宙"},
  {name: "都会"},
  {name: "田舎"}
])

# 階層の深さ 4
violent.children.create([
  {name: "エキサイティング"},
  {name: "情熱的"},
  {name: "疾走感"},
  {name: "バトル"},
  {name: "パワフル"},
  {name: "勇壮"}
])

gentle.children.create([
  {name: "リラックス"},
  {name: "ほのぼの"},
  {name: "日常"},
  {name: "温かい"},
  {name: "優しい"},
  {name: "華やか"},
  {name: "おしゃれ"},
  {name: "かわいい"},
  {name: "コミカル"},
  {name: "軽快"},
  {name: "爽やか"}
])

dark.children.create([
  {name: "哀愁感"},
  {name: "ホラー"},
  {name: "不気味"}
])

somethingelse.children.create([
  {name: "オルゴール"},
  {name: "口笛"},
  {name: "コーラス"}
])
