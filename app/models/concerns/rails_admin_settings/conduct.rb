module RailsAdminSettings
  # RailsAdmin設定
  module Conduct
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label 'tag'
        weight 1

        edit do
          field :name
        end
      end
    end
  end
end
