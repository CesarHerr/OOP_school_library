# spec/person_spec.rb

require_relative '../class_person'
require 'rspec'

describe Person do
  let(:person) { Person.new(25, nil, 'Alice') }

  it 'has an age' do
    expect(person.age).to eq(25)
  end

  it 'has a name' do
    expect(person.name).to eq('Alice')
  end

  it 'has an ID' do
    expect(person.id).to be_a(Integer)
  end

  it 'has rentals' do
    expect(person.rental).to be_an(Array)
  end

  it 'can use services' do
    expect(person.can_use_services?).to eq(true)
  end

  it 'returns correct name' do
    expect(person.correct_name).to eq('Alice')
  end
end
