class AddCompanyToEmployee < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :company_id, :integer
    add_index :employees, :company_id
    add_foreign_key :employees, :companies
  end
end
