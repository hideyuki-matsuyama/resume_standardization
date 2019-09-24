module RailsAdminSettings
  # RailsAdmin設定
  module Project
    extend ActiveSupport::Concern

    included do
      rails_admin do
        weight 1

        edit do
          field :name
          field :from do
            sort_reverse true
          end
          field :to
          field :description
          field :conducts
          field :employments
          field :technologies
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
