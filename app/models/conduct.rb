# == Schema Information
#
# Table name: conducts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# 役割
class Conduct < ApplicationRecord
  has_many :project_conduct_links, dependent: :destroy
  has_many :projects, through: :project_conduct_links
end
