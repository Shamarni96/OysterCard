require 'journey'

describe Journey do
  let(:station) { double :station }
  let(:subject) { Journey.new(station)}

  it "calculates the maximum fare of a journey" do
    subject.entry_station = "Paddington"
    subject.exit_station = nil
    expect(subject.fare).to eq 6
  end
  it "calculates the minimum fare of a journey" do
    subject.entry_station = "Paddington"
    subject.exit_station = "Bank"
    expect(subject.fare).to eq 1
  end
end
