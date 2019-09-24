module RailsAdminSettings
  # RailsAdmin設定
  module Technology
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label 'tag'
        weight 2

        list do
          field :id do
            sort_reverse false
            visible false
          end
          field :name
        end
        show do
          field :name
        end
        edit do
          field :name
        end
      end
    end
  end
end
