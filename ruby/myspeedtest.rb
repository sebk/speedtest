require 'speedtest'

class MySpeedtest
  def run_speedtest
    test = Speedtest::Test.new(
      download_runs: 4,
      upload_runs: 4,
      #ping_runs: 4,
      download_sizes: [750, 1500],
      upload_sizes: [10_000, 400_000],
      debug: false
    )

    results = test.run

    return Entry.new(
      Date.today.year,
      Date.today.month,
      Date.today.day,
      "#{Time.now.hour}:#{Time.now.min}",
      results.server,
      results.download_rate,
      results.upload_rate,
      results.pretty_download_rate,
      results.pretty_upload_rate
    )
  end
end

