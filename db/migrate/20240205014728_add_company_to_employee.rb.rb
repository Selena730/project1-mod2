class AddCompanyToEmployee < ActiveRecord::Migration[7.1]
  add_column :employees :company_id :integer
  add_index :employees, :company_id
  add_foreign_key :employees, :companies
end
