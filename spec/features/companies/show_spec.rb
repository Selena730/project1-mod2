require "rails_helper"

RSpec.describe "Company Show Page" do
  it "views company details" do
    company = Company.create(name: "Chaos", market_value: 1000000, active: true)

    visit "/companies/#{company.id}"

    expect(page).to have_content("Name: Chaos")
    expect(page).to have_content("Market Value: 1000000")
    expect(page).to have_content("Active: true")
  end


  it "shows the company's attributes" do
    company = Company.create(name: "Chaos", market_value: 1000000, active: true)

    visit "/companies/#{company.id}"

    expect(page).to have_content(company.name)
    expect(page).to have_content(company.market_value)
    expect(page).to have_content(company.active)
  end

  it "shows count of employees for the company" do
    company = Company.create(name: "Chaos", market_value: 1000000, active: true)
    company.employees.create(name: "John",salary: 50000, full_time: true,)
    company.employees.create(name: "Anna",salary: 54589, full_time: true,)

    visit "/companies/#{company.id}"

    expect(page).to have_content("Employees: 2")
  end
end
