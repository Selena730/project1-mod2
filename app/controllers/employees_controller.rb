class EmployeesController < ApplicationController


  def index
    if params[:company_id]
      @company = Company.find(params[:company_id])
      @employees = @company.employees
    else
      @employees = Employee.all
    end
  end



  def show
    @employee = Employee.find(params[:id])
  end
end
