class CreatePreference < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs, default: false
      t.timestamps
    end
  end
end
