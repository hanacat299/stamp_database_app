class SetTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '30分' },
    { id: 3, name: '~1時間' },
    { id: 4, name: '~2時間' },
    { id: 5, name: '半日' },
    { id: 6, name: '1日' },
    { id: 7, name: 'それ以上' }
  ]

  include ActiveHash::Associations
  has_many :stamps
  
end