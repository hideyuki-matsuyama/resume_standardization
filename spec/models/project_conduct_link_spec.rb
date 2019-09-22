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

require 'rails_helper'

RSpec.describe ProjectConductLink, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
