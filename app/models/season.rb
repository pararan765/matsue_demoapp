class Season < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '春（3月〜5月）' },
    { id: 3, name: '夏（6月〜8月）' },
    { id: 4, name: '秋（9月〜11月）' },
    { id: 5, name: '冬（12月〜2月）' }
  ]

  include ActiveHash::Associations
  has_many :matsues
  end