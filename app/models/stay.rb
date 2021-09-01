class Stay < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '日帰り' },
    { id: 3, name: '１泊2日' },
    { id: 4, name: '２泊3日' }
  ]

  include ActiveHash::Associations
  has_many :matsues
  end