class CreatePreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.boolean :create_new_songs
      t.boolean :create_new_artists

      t.timestamps
    end
  end
end
