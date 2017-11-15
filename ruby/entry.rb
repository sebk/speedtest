class Entry
  attr_reader :year, :month, :day, :time, :server, :download, :upload, :pretty_download, :pretty_upload

  def initialize(year, month, day, time, server, download, upload, pretty_download, pretty_upload)
    @year = year
    @month = month
    @day = day
    @time = time

    @server = server

    @download = download
    @upload = upload
    @pretty_download = pretty_download
    @pretty_upload = pretty_upload
  end
end
