module RailsAdminSettings
  # RailsAdmin設定
  module Technology
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label 'タグ'
        weight 2

        edit do
          field :name
        end
      end
    end
  end
end
