module RailsAdminSettings
  # RailsAdmin設定
  module ProjectEmploymentLink
    extend ActiveSupport::Concern

    included do
      rails_admin do
        visible false
      end
    end
  end
end
