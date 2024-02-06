require 'rails_helper'

RSpec.describe "Companies Index Page", type: :feature do
  before(:each) do
    @company = Company.create(name: "Chaos", market_value: 1000000, active: true)
  end

  it "views company details" do
    visit "/companies"

    expect(page).to have_content("Chaos")
    expect(page).to have_content("1000000")
    expect(page).to have_content("true")
  end

  it "displays multiple companies" do
    another_company = Company.create(name: "Order", market_value: 2000000, active: false)

    visit "/companies"

    expect(page).to have_content("Chaos")
    expect(page).to have_content("Order")
  end

  it 'includes link to Parent Index on other pages' do
    # Assuming you have a page for employees
    visit employees_path
    expect(page).to have_link('All Companies', href: "/companies")

    # Add tests for other pages as needed
  end
  # User Story 5, Parent Children Index

  # As a visitor
  # When I visit '/parents/:parent_id/child_table_name'
  # Then I see each Child that is associated with that Parent with each Child's attributes
  # (data from each column that is on the child table)

end
