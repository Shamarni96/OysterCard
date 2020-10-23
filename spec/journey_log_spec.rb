require 'journey_log'

describe Journeylog do
  let(:station) { double :station }

  describe "#start" do
    it "starts a journey" do
      subject.start(station)
      expect(subject.journey_in_progress).not_to eq(nil)
    end
  end

  describe "#finish" do
    before(:each) do
      subject.start(station)
      subject.finish(station)
    end

    it "finishes a journey" do
      expect(subject.journey_in_progress).to eq(nil)
    end
    it "saves the journey to log" do
      expect(subject.journeys).not_to be_empty
    end
  end
end
