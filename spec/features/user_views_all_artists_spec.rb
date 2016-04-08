require 'rails_helper'

RSpec.feature "User can view all artists in the db" do
  scenario "they can view all artists, and click on each" do
    artists = %w(CrayonPop, Spica, IU).map do |artist_name|
      Artist.create!(name: artist_name, image_path: "http://example.jpg")
    end

    visit artists_path

    artists.each do |artist|
      expect(page).to have_link artist.name
    end
  end
end
