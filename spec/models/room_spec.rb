require_relative "../spec_helper"

describe Room do

  before(:all) do
    DatabaseCleaner.start

    @ritz   = Hotel.create!(name: "Ritz")

    @susan = User.create!(name: "Susan Smith")

    @room_at_ritz = Room.create!(rate: 300, number: 1, hotel_id: @ritz.id)

    @ritz_booking = Booking.create!(guest_id: @susan.id, room_id: @room_at_ritz.id)
  end

  after(:all) do
    DatabaseCleaner.clean
  end

  it "has a rate" do
    expect(@room_at_ritz.rate).to eq 300
  end

  it "has a number" do
    expect(@room_at_ritz.number).to eq 1
  end

  it "has a hotel" do
    expect(@room_at_ritz.hotel).to eq @ritz
  end

  it "has bookings" do
    expect(@room_at_ritz.bookings).to match_array [@ritz_booking]
  end
end
