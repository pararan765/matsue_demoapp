class Number < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1人旅' },
    { id: 3, name: 'カップルでの旅行' }
  ]

  include ActiveHash::Associations
  has_many :matsues
  end