# frozen_string_literal: true

# Method describe from RSpec module says that in block will appear tests
# Usually one describe cover one class or one feature
RSpec.describe ExchangeIt::User do
  # Let declares variable for all tests in block of code
  # Also in let we can catch metadata and use it
  let(:user) { |ex| described_class.new(ex.metadata[:name] || 'John', ex.metadata[:surname] || 'Doe') }

  it 'returns name' do
    expect(user.name).to eq('John')
  end

  # We can throw metadata like an arguments
  it 'returns name as a string', name: nil do
    expect(user.name).to be_an_instance_of(String)
  end

  it 'returns surname' do
    expect(user.surname).to eq('Doe')
  end

  it 'returns surname as a string', surname: nil do
    expect(user.surname).to be_an_instance_of(String)
  end

  # There are three methods in RSpec to test: specify, it and example.
  specify '#account' do
    expect(user.account).to be_an_instance_of(ExchangeIt::Account)
  end

  it 'has zero balance by default' do
    expect(user.balance).to eq(0)
  end
end
