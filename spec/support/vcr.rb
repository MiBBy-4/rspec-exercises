require 'vcr'

VCR.configure do |config|
  config.ignore_hosts 'codeclimate.com'
  config.hook_into :webmock
  config.default_cassette_options = {
    decode_compressed_response: true
  }
  config.cassette_library_dir = File.join(
    File.dirname(__FILE__), '..', 'fixture', 'vcr_cassettes'
  )
  config.filter_sensitive_data('<LOKALISE_API_TOKEN>') {
    ENV.fetch('LOKALISE_API_TOKEN', 'hidden')
  }
end
