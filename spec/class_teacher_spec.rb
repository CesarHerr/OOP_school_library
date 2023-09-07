require_relative '../class_teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new(70, 'Maths', 'Mr. Jhon', 333)
  end

  it 'Creating a Teacher method should work correctly' do
    expect(@teacher.age).to eq(70)
    expect(@teacher.specialization).to eq('Maths')
    expect(@teacher.name).to eq('Mr. Jhon')
    expect(@teacher.id).to eq(333)
  end

  it 'should generate a hash representation of the Teacher' do
    expected_hash = {
      class: 'Teacher',
      age: 70,
      name: 'Mr. Jhon',
      id: 333,
      specialization: 'Maths',
      parent_permission: true
    }
    expect(@teacher.to_hash).to eq(expected_hash)
  end
end
