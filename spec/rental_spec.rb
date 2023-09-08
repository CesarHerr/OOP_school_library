require_relative '../rental'
require_relative '../book'
require_relative '../class_person'

describe Rental do
  context 'when creating a Rental' do
    # Arrange
    let(:rental) do
      Rental.new('2023/09/06', Book.new('Game of thrones', 'George Martin'), Person.new(16, nil, 'Anthony'))
    end
    # Act
    it 'should have a date' do
      # Assert
      expect(rental).to be_an_instance_of(Rental)
      expect(rental.date).to be_a(String)
      expect(rental.date).to eq('2023/09/06')
    end
    it 'should have a book' do
      # Assert
      expect(rental.book).to be_an_instance_of(Book)
      expect(rental.book.title).to eq('Game of thrones')
      expect(rental.book.author).to eq('George Martin')
    end
    it 'should have a person' do
      # Assert
      expect(rental.person).to be_an_instance_of(Person)
      expect(rental.person.age).to eq(16)
      expect(rental.person.name).to eq('Anthony')
      expect(rental.person.id).to be_an(Integer)
    end
  end
end
