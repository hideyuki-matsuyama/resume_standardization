# == Schema Information
#
# Table name: technologies
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# 技術
class Technology < ApplicationRecord
  include RailsAdminSettings::Technology

  has_many :project_technology_links, dependent: :destroy
  has_many :projects, through: :project_technology_links

  validates :name, presence: true
end
