class Employee < ApplicationRecord
  belongs_to :company, optional: true
end
