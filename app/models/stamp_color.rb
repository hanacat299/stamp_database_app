class SetTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'カタニ30（青金）' },
    { id: 3, name: 'カタニ50（金）' },
    { id: 4, name: 'カタニM（艶銀）' },
    { id: 5, name: 'GFPT(消銀)' },
    { id: 6, name: 'GF13(消赤金)' }
  ]

  include ActiveHash::Associations
  has_many :stamps
  
end