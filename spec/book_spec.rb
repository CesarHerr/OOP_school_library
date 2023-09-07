# spec/book_spec.rb
require_relative '../book'
require_relative '../class_person'
require 'rspec'

describe Book do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new(25, 'Alice') }
  let(:rental_date) { '2023-08-31' }

  it 'has a title' do
    expect(book.title).to eq('Title')
  end

  it 'has an author' do
    expect(book.author).to eq('Author')
  end

  it 'returns a hash' do
    expect(book.to_hash).to be_a(Hash)
  end

  it 'adds a rental' do
    rental = book.add_rental(rental_date, person)
    expect(rental).to be_an_instance_of(Rental)
    expect(book.rentals).to include(rental)
  end
end
