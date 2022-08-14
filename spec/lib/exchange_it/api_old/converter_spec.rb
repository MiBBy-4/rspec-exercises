# frozen_string_literal: true

RSpec.describe ExchangeIt::ApiOld::Converter do
  specify '#convert' do
    # There is a double of Converter module with convert method that returns 100
    converter_stub = instance_double described_class # , convert: 100

    # expect(converter_stub).to receive(:convert).with(sum: 80)

    # The same way to allow method in Stub
    allow(converter_stub).to receive(:convert).with(sum: 80).and_return(100)

    expect(converter_stub.convert(sum: 80)).to eq(100)

    # Spy
    expect(converter_stub).to have_received(:convert).with(sum: 80).once
  end
end
