require 'rubygems'
require 'shoulda'
require 'calendar'

class CalendarTest < Test::Unit::TestCase
  context "monthly" do
    should "calcuration" do
      @calendar = Calendar.monthly(2010, 11)
      assert_equal Date.new(2010, 10, 31), @calendar.display.first
      assert_equal Date.new(2010, 12, 4), @calendar.display.last
      assert_equal Date.new(2010, 11, 1), @calendar.first
    end
  end
end

