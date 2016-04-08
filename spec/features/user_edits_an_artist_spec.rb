require 'rails_helper'

RSpec.feature "User can edit an artist's page" do
  scenario "they can edit existing attributes" do
   # artist_attributes = {
   #   artist_name = "Crayon Pop",
   #   artist_image_path = "ohyeah.jpg"
   # }
    updated_name = "Spica"
    artist = Artist.create!(name: "Crayon Pop", image_path:  "ohyeah.jpg")

    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: updated_name
    click_on "Update Artist"

    expect(page).to have_content updated_name
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")

  end
end
