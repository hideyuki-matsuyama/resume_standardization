module RailsAdminSettings
  # RailsAdmin設定
  module User
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_icon 'icon-user'
        weight 2

        list do
          field :id
          field :email
          field :admin
          field :created_at
        end
      end
    end
  end
end
