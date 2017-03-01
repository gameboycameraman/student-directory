def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :march}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print(students)
  number_of_students = 1
  until number_of_students > students.length
    puts "#{number_of_students}. #{students[number_of_students -1][:name]} (#{students[number_of_students -1][:cohort]} cohort)"
    number_of_students += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

students = input_students
print_header
print(students)
print_footer(students)
