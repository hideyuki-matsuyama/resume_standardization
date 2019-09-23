module RailsAdminSettings
  # RailsAdmin設定
  module Project
    extend ActiveSupport::Concern

    included do
      rails_admin do
        weight 1

        edit do
          field :user
          field :name
          field :from
          field :to
          field :description
          field :conducts
          field :employments
          field :technologies
        end
      end
    end
  end
end
