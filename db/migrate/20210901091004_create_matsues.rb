class CreateMatsues < ActiveRecord::Migration[6.0]
  def change
    create_table :matsues do |t|
      t.integer :number_id,       null:false
      t.integer :stay_id,         null:false
      t.integer :season_id,       null:false
      t.integer :purpose_id,         null:false
      t.references :user, null: false, foregin_key: true
      t.timestamps
    end
  end
end
