# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  description :text
#  from        :datetime         not null
#  name        :string           not null
#  to          :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#

# 職歴
class Project < ApplicationRecord
  include RailsAdminSettings::Project

  belongs_to :user
  has_many :project_conduct_links, dependent: :destroy
  has_many :project_employment_links, dependent: :destroy
  has_many :project_technology_links, dependent: :destroy
  has_many :conducts, through: :project_conduct_links
  has_many :employments, through: :project_employment_links
  has_many :technologies, through: :project_technology_links
end
