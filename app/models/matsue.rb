class Matsue < ApplicationRecord
  with_options presence: true do
    with_options numericality: { other_than: 1 } do
      validates :number_id
      validates :stay_id 
      validates :season_id
      validates :purpose_id 
    end
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number
  belongs_to :stay
  belongs_to :season
  belongs_to :purpose
end
