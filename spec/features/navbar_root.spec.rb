require "rails_helper"

describe "when user visits '/'" do
  it "he sees a navbar at top of page" do
    visit root_path

    within(".position") do
      expect(page).to have_content("Home")
      expect(page).to have_content("Books")
    end
  end
end
