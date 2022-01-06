class Project < ApplicationRecord
  has_many :employee_projects
  has_many :employees, :through => :employee_projects
  scope :search, -> (name_parameter) { where(name: name_parameter) } 
end
