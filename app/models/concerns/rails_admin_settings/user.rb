module RailsAdminSettings
  # RailsAdmin設定
  module User
    extend ActiveSupport::Concern

    included do
      rails_admin do
        visible false

        list do
          field :email
          field :admin
        end
        show do
          field :email
          field :admin
          field :sign_in_count
          field :profile
        end
        edit do
          field :email do
            read_only true
            help ''
          end
          field :firstname
          field :lastname
          field :nickname
          field :admin
          field :profile
        end
      end
    end
  end
end
