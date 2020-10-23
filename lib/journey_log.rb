require_relative 'journey'
class Journeylog
  attr_accessor :journey_in_progress, :journey_class
  attr_reader :journeys

  def initialize
    @journey_class = Journey
    @journey_in_progress = nil
    @journeys = []
  end

  def start(entry_station)
    @journey_in_progress = Journey.new(entry_station)
  end

  def finish(exit_station)
    journey = current_journey
    journey.exit_station = exit_station
    @journeys << journey
    @journey_in_progress = nil
  end

  private

  def current_journey
    if @journey_in_progress == nil
      return Journey.new(nil)
    else
      return @journey_in_progress
    end
  end

end
