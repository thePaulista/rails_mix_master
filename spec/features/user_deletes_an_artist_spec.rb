require 'rails_helper'

RSpec.feature "User can delete an artist" do
scneario "they can delete an existing attributes" do
  artist = Artist.create!(name: "Crayon Pop", image_path: "ohyeah.jpg")

  visit artist_path

end
