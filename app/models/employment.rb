# == Schema Information
#
# Table name: employments
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# 雇用形態
class Employment < ApplicationRecord
  include RailsAdminSettings::Employment

  has_many :project_employment_links, dependent: :destroy
  has_many :projects, through: :project_employment_links

  validates :name, presence: true
end
