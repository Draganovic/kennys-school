module ApplicationHelper

  def oldest_and_youngest(students)
    student_ages = students.map do |student|
      student.age
    end
    s = student_ages.sort
  end
end
