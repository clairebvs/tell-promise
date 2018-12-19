require "rails_helper"

describe "user creates a new promise" do
  describe "they fill the form for author and description" do
    it "creates a new promise" do
      visit new_promise_path

      expect(current_path).to eq(new_promise_path)

      fill_in :promise_author, with: "Mary"
      fill_in :promise_description,  with: "Do not say it"
      click_on "Create Promise"

      expect(page).to have_content("Mary")
      expect(page).to have_content("Do not say it")
    end
  end
end
