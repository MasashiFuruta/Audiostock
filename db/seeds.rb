# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create([name: 'Luke', movie: movies.first)

# Categoryテーブル
bgm, se, voice, vocal = Category.create([{name: "bgm"}, {name: "se"}, {name: "voice"}, {name: "vocal"}])

use, instrument, genre, image = bgm.children.create([{name: "用途"}, {name: "楽器"}, {name: "ジャンル"}, {name: "イメージ"}])

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

image.children.create([
  {name: "季節"},
  {name: "感情・フィーリング"},
  {name: "雰囲気"},
  {name: "仕事"},
  {name: "一日"},
  {name: "場所"}
])

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
