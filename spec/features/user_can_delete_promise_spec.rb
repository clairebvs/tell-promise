require "rails_helper"

describe "user can delete a promise" do
  it "displays all promises except for the deleted one" do
    promise_1 = Promise.create!(description: 'Yes', author: 'Emily', id: 1)
    promise_2 = Promise.create!(description: 'Np', author: 'Lucas', id: 2)

    visit promises_path

    within "#promise-#{promise_1.id}" do
        click_button('Delete')
      end

    expect(current_path).to eq(promises_path)
    expect(page).to have_content(promise_2.author)
    expect(page).to have_content(promise_2.description)
    expect(page).to_not have_content(promise_1.author)
    expect(page).to_not have_content(promise_1.description)
  end
end
