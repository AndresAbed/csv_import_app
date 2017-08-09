require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid without a name" do
    expect(build(:user, name: nil)).to_not be_valid
  end

  it "is invalid without an email" do
    expect(build(:user, email: nil)).to_not be_valid
  end

  it "is invalid when an email has already been taken" do
    user1 = create(:user)
    user2 = build(:user, id: 2)
    puts "#{user1.inspect}"
    puts "#{user2.inspect}"
    expect(user2).to_not be_valid
    expect(user2.errors[:email]).to include("has already been taken")
  end
end
