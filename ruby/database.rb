require 'sqlite3'
require 'sequel'

class Database
  def initialize(database_file)
    @database = database_file
  end

  def insert(entry)
    SQLite3::Database.new(@database.to_s)
    db = Sequel.connect("sqlite://#{@database}")

    db.create_table? :entries do
      Int :year
      Int :month
      Int :day
      String :time
      String :server
      Float :download
      Float :upload
      String :prettydownload
      String :prettyupload
    end

    entries = db[:entries] # Create a dataset

    entries.insert(
      year: entry.year,
      month: entry.month,
      day: entry.day,
      time: entry.time,
      server: entry.server,
      download: entry.download,
      upload: entry.upload,
      prettydownload: entry.pretty_download,
      prettyupload: entry.pretty_upload
    )
  end
end
