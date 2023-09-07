# spec/trimmer_spec.rb

require_relative '../trimmer'
require 'rspec'

describe TrimmerDecorator do
  let(:nameable) { double("Nameable") }
  let(:decorated_nameable) { TrimmerDecorator.new(nameable) }

  it 'trims the name to 10 characters' do
    allow(nameable).to receive(:correct_name).and_return('12345678901')
    expect(decorated_nameable.correct_name).to eq('1234567890')
  end

  it 'leaves short names unchanged' do
    allow(nameable).to receive(:correct_name).and_return('ShortName')
  end
end
