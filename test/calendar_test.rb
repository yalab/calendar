require 'rubygems'
require 'shoulda'
require 'calendar'

class CalendarTest < Test::Unit::TestCase
  context "monthly" do
    setup do
      @calendar = Calendar.monthly(2010, 11)
    end
    should "calcuration" do
      assert_equal Date.new(2010, 10, 31), @calendar.display.first
      assert_equal Date.new(2010, 12, 4), @calendar.display.last
      assert_equal Date.new(2010, 11, 1), @calendar.first
    end
    should "get year and month" do
      assert_equal 2010, @calendar.year
      assert_equal 11, @calendar.month
    end
  end
end

