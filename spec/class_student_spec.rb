require_relative '../class_student'

describe Student do
  context 'when creating a Student' do
    # Arrange
    let(:student) { Student.new(18, 'Clase A', 'Lupin', '300', parent_permission: true) }

    it 'should have correct attributes' do
      # Act
      age = student.age
      classroom = student.classroom
      name = student.name
      id = student.id

      # Assert
      expect(age).to eq(18)
      expect(classroom).to eq('Clase A')
      expect(name).to eq('Lupin')
      expect(id).to eq('300')
    end

    it 'should generate a hash representation of the student' do
      # Act
      student_hash = student.to_hash

      # Assert
      expected_hash = {
        class: 'Student',
        age: 18,
        name: 'Lupin',
        id: '300',
        classroom: 'Clase A',
        parent_permission: true
      }
      expect(student_hash).to eq(expected_hash)
    end

    it 'should return the play_hooky message' do
      expect(student.play_hooky).to eq('¯(ツ)/¯')
    end
  end
end
