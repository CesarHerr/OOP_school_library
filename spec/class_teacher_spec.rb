require_relative '../class_teacher'

describe Teacher do
  # Arrange
  let(:teacher) { Teacher.new(70, 'Maths', 'Mr. Jhon', 333) }

  context 'when creating a Teacher' do
    it 'should set the correct attributes' do
      # Act
      age = teacher.age
      specialization = teacher.specialization
      name = teacher.name
      id = teacher.id

      # Assert
      expect(age).to eq(70)
      expect(specialization).to eq('Maths')
      expect(name).to eq('Mr. Jhon')
      expect(id).to eq(333)
    end
  end

  context 'when generating a hash representation' do
    it 'should include the correct attributes' do
      # Act
      teacher_hash = teacher.to_hash

      # Assert
      expected_hash = {
        class: 'Teacher',
        age: 70,
        name: 'Mr. Jhon',
        id: 333,
        specialization: 'Maths',
        parent_permission: true
      }
      expect(teacher_hash).to eq(expected_hash)
    end
  end
end
