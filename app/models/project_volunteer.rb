class ProjectVolunteer < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  enum_field :role, ['volunteer', 'tech_lead']

  attr_protected :role

  validates_presence_of :role
end
