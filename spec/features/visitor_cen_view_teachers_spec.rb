require 'rails_helper'

RSpec.feature "visitor can view teachers" do
  scenario "and sees associated students" do
    #create teachers
    teacher1 = Teacher.create(first_name: "Mary", last_name: "Poppins")
    teacher2 = Teacher.create(first_name: "Jeff", last_name: "Casimir")
    #create students
    # student1 = Student.create(first_name: "Bob", teacher_id: teacher1.id)
    student1 = teacher1.students.create(first_name: "Bob")
    student2 = teacher2.students.create(first_name: "Tom")
    #visit teacher index page
    visit teachers_path # visit '/teachers'

    #expect each teacher with students
    within("#teacher-#{teacher1.id}") do
      expect(page).to have_content("Mary")
      expect(page).to have_content("Bob")
    end

    within("#teacher-#{teacher2.id}") do
      expect(page).to have_content("Jeff")
      expect(page).to have_content("Tom")

    end
  end
end
