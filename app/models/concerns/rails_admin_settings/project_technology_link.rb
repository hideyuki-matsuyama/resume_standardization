module RailsAdminSettings
  # RailsAdmin設定
  module ProjectTechnologyLink
    extend ActiveSupport::Concern

    included do
      rails_admin do
        visible false

        edit do
          field :name
        end
      end
    end
  end
end
