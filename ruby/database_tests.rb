require_relative 'database'
require_relative 'entry'
require 'test/unit'

class TestDatabase < Test::Unit::TestCase
  def setup
    drop_table
  end

  def teardown
    drop_table
  end

  private def drop_table
    db = SQLite3::Database.open 'test.db'
    db.execute 'DROP TABLE IF EXISTS Entries;'
    db.close
  end

  def test_insert_row
    database = Database.new('test.db')
    entry = Entry.new(2017, 1, 1, '10:00', 'Server', 100.0, 10.0, '10 Mbps', '3 Mbps')

    database.insert(entry)

    db = SQLite3::Database.open 'test.db'
    stm = db.prepare 'SELECT * FROM Entries'
    rs = stm.execute

    assert_equal(1, rs.count)
  ensure
    stm.close if stm
    db.close if db
  end
end
