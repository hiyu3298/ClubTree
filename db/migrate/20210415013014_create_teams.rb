class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|

      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :image_id
      t.text :introduction
      t.integer :admission_fee, default: 0, null: false
      t.integer :membership_fee, default: 0, null: false
      t.string :activity_day, null: false
      t.string :activity_time, null: false
      t.string :place, null: false
      t.boolean :activity_status, default: true, null: false
      t.timestamps
    end
  end
end
