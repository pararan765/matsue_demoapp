class Number < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1人旅' },
    { id: 3, name: 'カップルでの旅行' },
    { id: 4, name: '友達との旅行（男）' },
    { id: 5, name: '友達との旅行（男）' }
  ]

  include ActiveHash::Associations
  has_many :matsues
  end