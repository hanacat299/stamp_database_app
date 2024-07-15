class Desgin < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '細線' },
    { id: 3, name: 'ベタ多め' },
    { id: 4, name: '細線+ベタ' },
    { id: 5, name: '特になし' }
  ]

  include ActiveHash::Associations
  has_many :stamps
  
end