# == Schema Information
#
# Table name: project_technology_links
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  project_id    :bigint           not null
#  technology_id :bigint           not null
#
# Indexes
#
#  index_project_technology_links_on_project_id     (project_id)
#  index_project_technology_links_on_technology_id  (technology_id)
#

# 職歴と技術の関連
class ProjectTechnologyLink < ApplicationRecord
  belongs_to :project
  belongs_to :technology
end
