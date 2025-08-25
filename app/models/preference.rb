class Preference < ApplicationRecord
  def self.artist_enabled?
    Preference.last.allow_create_artists
  end

  def self.song_enabled?
    Preference.last.allow_create_songs
  end
end
