require 'rails_helper'

describe Promise, type: :model do
  describe "validations" do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:author)}
  end
end
