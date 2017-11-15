require_relative 'myspeedtest'
require_relative 'database'
require_relative 'entry'

database = Database.new('speedtest.db')
speedtest = MySpeedtest.new
entry = speedtest.run_speedtest
database.insert(entry)
