require "rails_helper"

describe "user sees all promises" do
  describe "they visit the page /promises" do
    it "shows all promises" do
      promise_1 = Promise.create!(description: 'To do', author: 'Elaine')
      promise_2 = Promise.create!(description: 'I will not', author: 'George')

      visit '/promises'

      expect(page).to have_content(promise_1.description)
      expect(page).to have_content(promise_2.description)
      expect(page).to have_content(promise_1.author)
      expect(page).to have_content(promise_2.author)
    end
  end
end
