class CompaniesController < ApplicationController
  def index
    @companies = Company.all
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
