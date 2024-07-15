class PaperColor < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '白' },
    { id: 3, name: '黒' },
    { id: 4, name: '茶' },
    { id: 5, name: 'クリーム' },
    { id: 6, name: '青' },
    { id: 7, name: '赤' },
    { id: 8, name: '黄' },
    { id: 4, name: '緑' },
    { id: 9, name: '紫' },
    { id: 10, name: '金' },
    { id: 11, name: '銀' },
    { id: 12, name: '蛍光色' },
  ]

  include ActiveHash::Associations
  has_many :stamps
  
end