require_relative '../base_decorator'
require_relative '../nameable'

describe Decorator do
  let(:nameable_mock) { double(Nameable, correct_name: 'Samuel') }
  let(:decorator) { Decorator.new(nameable_mock) }

  it 'correct_name should return the correct name from the mock' do
    expect(decorator.correct_name).to eq('Samuel')
  end
end
