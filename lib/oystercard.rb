class Oystercard
  # allows balance to be accessed outside of the class it is in.
  attr_accessor :balance, :entry_station, :history
  attr_reader :journey

  DEFAULT_BALANCE = 0
  MAX_BALANCE = 90
  MIN_BALANCE = 1
  # sets variables for new instances of the class.
  def initialize
    @balance = DEFAULT_BALANCE
    @max = MAX_BALANCE
    @min = MIN_BALANCE
    @entry_station = nil
    @history = []
  end

  def view_balance
    puts balance
  end

  def top_up(amount)
    raise "maximum amount limit reached." if @balance + amount > @max
    @balance += amount
  end

  def touch_in(entry_station)
    raise "insufficient funds." if @balance < @min
    @journey = Journey.new
    @journey.entry_station = entry_station
  end

  def touch_out(exit_station)
    @journey.exit_station = exit_station
    deduct(@journey.fare)
    finish_journey
  end

  def journey_history
    @history
  end

  private

  def deduct(amount = 1)
    @balance -= amount
  end

  def finish_journey
    @journey.in_journey = false
    @history.push @journey
    @journey = nil
  end

end
