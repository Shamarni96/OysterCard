require 'journey_log'

describe Journey_log do
  it "starts a journey" do
    expect(Journey_log.start).to eq journey
  end
  it "ends a journey" do
    expect(Journey_log.finish).to eq 
  end
end
