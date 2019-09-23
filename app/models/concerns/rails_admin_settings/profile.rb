module RailsAdminSettings
  # RailsAdmin設定
  module Profile
    extend ActiveSupport::Concern

    included do
      rails_admin do
        weight 0

        edit do
          field :introduction do
            html_attributes rows: 10, cols: 18
          end
          field :public_relation
          field :aspiration
          field :user do
            visible false
          end
          field :user_id, :hidden do
            visible true
            default_value do
              bindings[:view]._current_user.id
            end
          end
        end
      end
    end
  end
end
