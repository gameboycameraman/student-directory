def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.capitalize.gsub("\n", "")

  puts "And where was this student born?"
  country_of_birth = gets.capitalize.gsub("\n", "")
  if country_of_birth.empty?
    country_of_birth = "Somewhere"
  end
  puts "Does he/she has any hobbies?"
  hobbies = gets.capitalize.gsub("\n", "")
  if hobbies.empty?
    hobbies = "No"
  end

  puts "Which cohort is he/she going to attend?"
  cohort = gets.capitalize.gsub("\n", "")
  until ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"].include? cohort
    puts "We need you to give us a month."
    cohort = gets.capitalize.gsub("\n", "")
  end


  while !name.empty? do
    students << {name: name, country: country_of_birth, hobbies: hobbies, cohort: cohort}
    if students.count < 2
      puts "Now we have 1 student."
    else
      puts "Now we have #{students.count} students"
    end
    puts "What's the name of the next student? (if none, just press return)"
    name = gets.capitalize.gsub("\n", "")
    break if name.empty?
    puts "And where was this student born?"
    country_of_birth = gets.capitalize.gsub("\n", "")
    if country_of_birth.empty?
      country_of_birth = "Somewhere"
    end
    puts "Does he/she has any hobbies?"
    hobbies = gets.capitalize.gsub("\n", "")
    if hobbies.empty?
      hobbies = "No"
    end
    puts "Which cohort is he/she going to attend?"
    cohort = gets.capitalize.gsub("\n", "")
    until ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"].include? cohort
      puts "We need you to give us a month."
      cohort = gets.capitalize.gsub("\n", "")
    end
  end
  students.sort_by{|student| student[:cohort]}
end


def print_header
  puts "The students of Villains Academy".center(100)
  puts "----------------".center(100)
end

def print(students)
  number_of_students = 1
  until number_of_students > students.length
    puts "#{number_of_students}. #{students[number_of_students -1][:name]} from #{students[number_of_students -1][:country]} - Hobby : #{students[number_of_students -1][:hobbies]} (#{students[number_of_students -1][:cohort]} cohort)".center(100)
    number_of_students += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students.".center(100)
end


students = input_students
print_header
print(students)
print_footer(students)
