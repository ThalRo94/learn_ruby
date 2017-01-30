class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    @minutes, @seconds = @seconds.divmod(60)
    @hours, @minutes = @minutes.divmod(60)

    @seconds = "0#{@seconds}" if @seconds.to_s.length == 1
    @minutes = "0#{@minutes}" if @minutes.to_s.length == 1
    @hours = "0#{@hours}" if @hours.to_s.length == 1

    return "#{@hours}:#{@minutes}:#{@seconds}"
  end
end
