module RailsAdminSettings
  # RailsAdmin設定
  module Employment
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label 'タグ'
        weight 0

        list do
          field :id
          field :name
          field :updated_at do
            date_format :long
          end
        end
        edit do
          field :name
        end
      end
    end
  end
end
