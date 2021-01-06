class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists
      t.boolean :allow_create_songs

      t.timestamps
    end
  end
end

# Create a Preference model that will store preferences for the app. It will need to have fields for:
# Allowing creation of new songs. Used to control the ability to add new songs to the system.
# Allowing creation of new artists. Used to control the ability to add new artists to the system. Note: There will only be 1 instance of Preference, not a preference associated with each artist/song. After creating the model, run rake preferences:load so that your code will work in the browser.