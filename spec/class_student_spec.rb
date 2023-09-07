require_relative '../class_student'

describe Student do
  before(:each) do
    @student = Student.new(18, 'Clase A', 'Lupin', '300', parent_permission: true)
  end

  it 'Creating a Student method should work correctly' do
    expect(@student.age).to eq(18)
    expect(@student.classroom).to eq('Clase A')
    expect(@student.name).to eq('Lupin')
    expect(@student.id).to eq('300')
  end

  it 'should generate a hash representation of the student' do
    expected_hash = {
      class: 'Student',
      age: 18,
      name: 'Lupin',
      id: '300',
      classroom: 'Clase A',
      parent_permission: true
    }
    expect(@student.to_hash).to eq(expected_hash)
  end

  it 'should return the play_hooky message' do
    expect(@student.play_hooky).to eq('¯(ツ)/¯')
  end
end
