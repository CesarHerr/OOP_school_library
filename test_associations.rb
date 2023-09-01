require_relative 'class_person'
require_relative 'book'
require_relative 'rental'
require_relative 'class_student'
require_relative 'classroom'

# Creating books
book1 = Book.new('The big Book', 'Author 1')
book2 = Book.new('Another Book', 'Author 2')

person1 = Person.new(25, 'Alice')
person2 = Person.new(17, 'Bob', parent_permission: false)
person3 = Person.new(30, 'Charlie')

# Create instances of rentals
rental1 = Rental.new('2023-08-31', book1, person1)
rental2 = Rental.new('2023-09-01', book1, person2)
rental3 = Rental.new('2023-09-02', book2, person1)
rental4 = Rental.new('2023-09-03', book2, person3)

# Print information about the rentals
puts "Rentals of #{person1.name}:"
person1.rental.each do |rental|
  puts "Book: #{rental.book.title}, Date: #{rental.date}"
end

puts "\nRentals of #{book2.title}:"
book2.rentals.each do |rental|
  puts "Person: #{rental.person.name}, Date: #{rental.date}"
end

classroom = Classroom.new('A1')

# Create instances of students (Student)
student1 = Student.new(16, classroom, 'Alice')
student2 = Student.new(17, classroom, 'Bob')
student3 = Student.new(16, classroom, 'Charlie')

# Add students to the classroom
classroom.add_student(student1)
classroom.add_student(student2)
classroom.add_student(student3)

# Print information about the classroom and its students
puts "\nClass: #{classroom.label}"
puts 'Students in the class:'
classroom.student.each do |student|
  puts "Name: #{student.name}, Age: #{student.age}"
end
