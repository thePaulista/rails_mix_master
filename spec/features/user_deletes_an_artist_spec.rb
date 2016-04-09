require 'rails_helper'

RSpec.feature "User can delete an artist" do
  scenario "they can delete an existing artist" do
    artist = Artist.create!(name: "Crayon Pop", image_path: "ohyeah.jpg")

    visit artists_path
    click_on("Crayon Pop")
    click_on "Delete"

    expect(current_path).to eq artists_path
    expect(page).not_to have_content "Crayon Pop"
  end
end
