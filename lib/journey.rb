class Journey
  attr_accessor :entry_station, :exit_station, :in_journey
  MIN_FARE = 1
  MAX_FARE = 6
  def initialize
    @entry_station
    @in_journey = true
    @exit_station
  end

  def in_journey?
    @entry_station != nil
  end

  def fare
  return MIN_FARE if @exit_station != nil && entry_station != nil
  return MAX_FARE
  end
end
