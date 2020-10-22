require 'Station'

describe Station do

  let(:subject) { Station.new("Bank", 2) }
  
  it "names a station" do
    expect(subject.name).to eq "Bank"
  end
  it "gives the zone that the station is in" do
    expect(subject.zone).to eq 2
  end
end
