RSpec.describe ExchangeIt::Api::Client do
  let(:test_client) { described_class.new(ENV.fetch('LOKALISE_API_TOKEN') { 'fake' } ) }
  let(:project_id) { '123.abc' }

  specify '#project' do
    project = test_client.project project_id
  end
end
