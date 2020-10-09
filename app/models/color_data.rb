class ColorData < ActiveHash::Base
  class << self
    colors = [
      {id: 1, name: 'ホワイト'}, {id: 2, name: 'ブラック'}, {id: 3, name: 'グレー'},
      {id: 4, name: 'ブラウン'}, {id: 5, name: 'ベージュ'}, {id: 6, name: 'グリーン'},
      {id: 7, name: 'ブルー'}, {id: 8, name: 'パープル'}, {id: 9, name: 'イエロー'},
      {id: 10, name: 'ピンク'}, {id: 11, name: 'レッド'}, {id: 12, name: 'シルバー'},
      {id: 13, name: 'ゴールド'}
    ]
  end
end
