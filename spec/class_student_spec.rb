require_relative '../class_student'

describe Student do
  it 'Creating a Student method should work correctly' do
    student_person = Student.new(18, 'classroom', 'Lupin', '300', parent_permission: true)

    expect(student_person.age).to eq(18)
  end
end
