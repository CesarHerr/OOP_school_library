# spec/capitalize_spec.rb

require_relative '../capitalize'
require 'rspec'

describe CapitalizeDecorator do
  let(:nameable) { double("Nameable") }
  let(:decorated_nameable) { CapitalizeDecorator.new(nameable) }

  before do
    allow(nameable).to receive(:correct_name).and_return('')
  end

  it 'capitalizes the name' do
    expect(decorated_nameable.correct_name).to eq('')
  end

  it 'leaves already capitalized names unchanged' do
    expect(decorated_nameable.correct_name).to eq('')
  end

  it 'capitalizes names with mixed case' do
    expect(decorated_nameable.correct_name).to eq('')
  end
end