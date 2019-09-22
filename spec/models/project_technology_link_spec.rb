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

require 'rails_helper'

RSpec.describe ProjectTechnologyLink, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
