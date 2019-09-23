module RailsAdminSettings
  # RailsAdmin設定
  module Profile
    extend ActiveSupport::Concern

    included do
      rails_admin do
        weight 0
      end
    end
  end
end
