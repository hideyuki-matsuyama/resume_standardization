# == Schema Information
#
# Table name: project_conduct_links
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  conduct_id :bigint           not null
#  project_id :bigint           not null
#
# Indexes
#
#  index_project_conduct_links_on_conduct_id  (conduct_id)
#  index_project_conduct_links_on_project_id  (project_id)
#

# 職歴と役割の関連
class ProjectConductLink < ApplicationRecord
  include RailsAdminSettings::ProjectConductLink

  belongs_to :project
  belongs_to :conduct
end
