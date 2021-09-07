class Purpose < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '美味しいご飯を食べたい' },
    { id: 3, name: '歴史に興味がある' },
    { id: 4, name: '温泉に入りたい' },
    { id: 5, name: '日常の疲れを癒したい' },
    { id: 6, name: 'パワースポットに興味がある' },
  ]

  include ActiveHash::Associations
  has_many :matsues
  end