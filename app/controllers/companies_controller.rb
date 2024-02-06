class CompaniesController < ApplicationController
  def index
    @companies = Company.order(created_at: :desc)
  end

  def show
    @company = Company.find(params[:id])
  end
end

def create
  @company = Company.new(company_params)
  if @company.save
    redirect_to companies_path
  else
    render :new
  end

  def company_params
    params.require(:company).permit(:name, :market_value, :active)
  end

end



# Path: app/views/companies/index.html.erb
# <h1>Companies</h1>
# <ul>
#   <% @companies.each do |company| %>
#     <li><%= company.name %></li>
#   <% end %>
# </ul>
# ```

# ###
