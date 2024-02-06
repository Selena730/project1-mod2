require "rails_helper"

RSpec.describe "Company Show Page" do
  it "views company details" do
    company = Company.create(name: "Chaos", market_value: 1000000, active: true)

    visit "/companies/#{company.id}"

    expect(page).to have_content("Name: Chaos")
    expect(page).to have_content("Market Value: 1000000")
    expect(page).to have_content("Active: true")
  end

  it "does not show details of other companies" do
    company_2 = Company.create(name: "Order", market_value: 2000000, active: false)

    visit "/companies/#{company.id}"

    expect(page).to_not have_content("Order")
  end


end
