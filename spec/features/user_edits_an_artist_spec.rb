require 'rails_helper'

RSpec.feature "User can edit an artist's page" do
  scenario "they can edit existing artist attributes" do
    artist = Artist.create!(name: "Crayon Pop", image_path:  "ohyeah.jpg")

    updated_name = "Spica"

    visit artists_path

    click_on "Crayon Pop"

    click_on "Edit"

    fill_in "artist_name", with: updated_name
    click_on "Update Artist"

    expect(page).to have_content updated_name
    expect(page).to_not have_content artist.name
  end
end


