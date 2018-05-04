require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "invalid event should not be saved" do
    event = Event.new
    #guardó porque no hay nada que valide que no se ingresen eventos vacíos, esperaba un false, pero fue true
    refute event.save
  end

  test "valid event should be saved" do
    event = Event.new(name: "RubyShool", start_date: DateTime.now, end_date: 6.weeks.from_now)
    assert event.save
  end
end