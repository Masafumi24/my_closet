color_data = [
    { id: 1, name: 'ホワイト', background_color: "#fff" },
    { id: 2, name: 'ブラック', background_color: "#000" },
    { id: 3, name: 'グレー', background_color: "#808080" },
    { id: 4, name: 'ブラウン', background_color: "#660000" },
    { id: 5, name: 'ベージュ', background_color: "#FFE4C4" },
    { id: 6, name: 'グリーン', background_color: "#006400" },
    { id: 7, name: 'ブルー', background_color: "#0000CD" },
    { id: 8, name: 'パープル', background_color: "#8B008B" },
    { id: 9, name: 'イエロー', background_color: "#FFFF00" },
    { id: 10, name: 'ピンク', background_color: "#FF82B2" },
    { id: 11, name: 'レッド', background_color: "#FF0000" },
    { id: 23, name: 'シルバー', background_color: "#C0C0C0" },
    { id: 24, name: 'ゴールド', background_color: "#DAA520" }
]

color_data.each do |data|
  Color.create!(
    id: data[:id],
    name: data[:name],
    background_color: data[:background_color]
  )
end

season_data = [
    { id: 1, name: '春', background_color: "#FFCCFF" },
    { id: 2, name: '夏', background_color: "#66FFCC" },
    { id: 3, name: '秋', background_color: "#CC9966" },
    { id: 4, name: '冬', background_color: "#EEEEEE" }
]

season_data.each do |data|
  Season.create!(
    id: data[:id],
    name: data[:name],
    background_color: data[:background_color]
  )
end