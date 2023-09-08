require_relative '../classroom'

describe Classroom do
  context 'when creating a Classroom' do
    # Arrange
    let(:classroom) do
      Classroom.new('Classroom 1')
    end
    # Act
    it 'should have a label' do
      # Assert
      expect(classroom).to be_an_instance_of(Classroom)
      expect(classroom.label).to be_a(String)
      expect(classroom.label).to eq('Classroom 1')
    end
    it 'should have a student' do
      # Assert
      expect(classroom.student).to be_an(Array)
      expect(classroom.student).to eq([])
    end
  end
  context 'when adding a student' do
    # Arrange
    let(:classroom) do
      Classroom.new('Classroom 1')
    end
    let(:student) do
      Student.new(16, 'Classroom 1', 'Anthony', '23', parent_permission: true)
    end
    # Act
    it 'should add a student' do
      # Assert
      expect(classroom.add_student(student)).to be_a(Object)
      expect(classroom.add_student(student)).to be_an_instance_of(Classroom)
    end
  end
end
