require_relative "entry"
require "test/unit"
 
class TestEntry < Test::Unit::TestCase
 
  def test_create_entry_instance
    entry = Entry.new(2017, 1, 1, "10:00:00", "Telekom", "Server", 300.0, 100.0, 10.0, 100.0)

    assert_not_nil(entry)
    assert_equal(2017, entry.year)
    assert_equal(1, entry.month) 
    assert_equal(1, entry.day)
    assert_equal("10:00:00", entry.time)
    assert_equal("Telekom", entry.isp)
    assert_equal("Server", entry.server)
    assert_equal(300.0, entry.server_dist)
    assert_equal(100.0, entry.download)
    assert_equal(10.0, entry.upload)
    assert_equal(100.0, entry.ping)
  end
 
end