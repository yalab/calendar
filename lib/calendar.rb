require 'date'
class Calendar
  attr_reader :first, :last

  def self.monthly(year, month)
    self.new(year, month, 1)
  end

  def initialize(year, month, day)
    @first = Date.new(year.to_i, month.to_i, day.to_i)
  end

  def display
    display_first_day = @first - @first.wday
    @last = @first.next_month - 1
    display_last_day = last + (6 - last.wday)
    (display_first_day..display_last_day)
  end

  def method_missing(method)
    super unless @first.respond_to?(method)
    @first.send(method)
  end
end
