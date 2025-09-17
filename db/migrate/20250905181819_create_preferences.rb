class CreatePreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.boolean "allow_create_artists", null: false, default: true
      t.boolean "allow_create_songs", null: false, default: true
      t.timestamps
    end
  end
end
