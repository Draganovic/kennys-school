require 'rails_helper'

RSpec.feature "visitor views oldest and youngest student" do
  scenario "on teacher index visitor can view student ages oldest/youngest" do

  teacher = Teacher.create(first_name: "Mary", last_name: "Poppins")
  student1 = teacher.students.create(first_name: "Bob", age: 12)
  student2 = teacher.students.create(first_name: "Tom", age: 15)
  student3 = teacher.students.create(first_name: "Frank", age: 17)

  visit teachers_path

  expect(page).to have_content "12"
  expect(page).to have_content "17"
  expect(page).not_to have_content "15"
  end
end
