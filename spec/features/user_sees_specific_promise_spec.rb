require "rails_helper"

describe "user sees a specific promise" do
  it "displays the information for that specific promise" do
    promise1 = Promise.create!(description: 'Do not', author: "John")

    visit promise_path(promise1.id)

    expect(page).to have_content(promise1.author)
    expect(page).to have_content(promise1.description)
  end
end
