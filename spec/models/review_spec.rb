require "spec_helper"

describe Review, type: :model do

  it "is invalid if the rating is more than 5" do
    review = Review.new(rating: 6)
    expect(review).to have(1).error_on(:rating)
    expect(review).not_to be_valid
  end

  it { should belong_to :user }
  it { should belong_to :restaurant }


end
