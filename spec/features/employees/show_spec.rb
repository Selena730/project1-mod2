require 'rails_helper'

RSpec.describe 'Employee Show Page' do
  it 'views employee details' do
    employee = Employee.create(
      name: 'John',
      salary: 50000,
      full_time: true,
    )

    visit "/employees/#{employee.id}"

    expect(page).to have_content('Name: John')
    expect(page).to have_content('Salary: 50000')
    expect(page).to have_content('full_time: true')
  end
end
