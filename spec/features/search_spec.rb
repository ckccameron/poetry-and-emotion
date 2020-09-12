require 'rails_helper'

RSpec.describe "PoetryDB API" do
  it "can find first 10 matching poems for an author" do
    author_name = "Emily"

    visit root_path

    fill_in :author, with: author_name
    click_on "Get Poems"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Here are the first 10 poems")
    expect(page).to have_css(".poem", count: 10)

    within (first(".poem")) do
      expect(page).to have_css(".title")
      expect(page).to have_css(".author")
      expect(page).to have_css(".poem_string")
      expect(page).to have_css(".tones")
    end

    # within ".poems".last do
    #   expect(page).to have_css(".title")
    #   expect(page).to have_css(".author")
    #   expect(page).to have_css(".poem_string")
    #   expect(page).to have_css(".tones")
    # end
  end
#   As a user
# When I visit "/"
# And I fill in "Emily" in the textfield(Note: Use the existing search form)
# And I click "Get Poems"
# Then I should be on page "/search"
# Then I should see a list of the first 10 poems
# Then I should see the tone or tones listed for each poem.
# For each poem I should see
# - Title
# - Author
# - The poem(as a single string)
# I should also see:
# - The tone or tones for each poem
end
