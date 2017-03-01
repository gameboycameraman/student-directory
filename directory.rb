def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "And where was this student born?"
  country_of_birth = gets.chomp
  puts "Does he/she has any hobbies?"
  hobbies = gets.chomp

  while !name.empty? do
    students << {name: name, country: country_of_birth, hobbies: hobbies, cohort: :march}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    break if name.empty?
    puts "And where was this student born?"
    country_of_birth = gets.chomp
    puts "Does he/she has any hobbies?"
    hobbies = gets.chomp
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
    puts "#{number_of_students}. #{students[number_of_students -1][:name]} from #{students[number_of_students -1][:country]} - Hobby : #{students[number_of_students -1][:hobbies]} (#{students[number_of_students -1][:cohort]} cohort)"
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
