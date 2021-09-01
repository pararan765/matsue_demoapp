class Matsue < ApplicationRecord
  with_options presence: true, numericality: { other_than: 1 } do
    validates :number_id
    validates :stay_id 
    validates :season_id
    validates :purpose_id 
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number
  belongs_to :stay
  belongs_to :season
  belongs_to :matsues
end
