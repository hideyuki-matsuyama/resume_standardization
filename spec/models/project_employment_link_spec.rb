# == Schema Information
#
# Table name: project_employment_links
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  employment_id :bigint           not null
#  project_id    :bigint           not null
#
# Indexes
#
#  index_project_employment_links_on_employment_id  (employment_id)
#  index_project_employment_links_on_project_id     (project_id)
#

require 'rails_helper'

RSpec.describe ProjectEmploymentLink, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
