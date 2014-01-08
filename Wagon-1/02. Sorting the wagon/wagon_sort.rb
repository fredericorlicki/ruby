def wagon_collect
  student_array = []
	puts "type a student"
  while true
		student = gets.chomp
		break if student.empty?
		student_array << student
    puts "Type another student"
  end
	congrats(student_array)
end

def congrats(students)
  puts "Congratulations! Your wagon have #{students.count} students"
  puts students.sort_by { |student| student.downcase }
end

wagon_collect
