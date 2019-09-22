# 開発中は設定をリロードする
# see: https://github.com/sferik/rails_admin/wiki/How-to:-Reloading-RailsAdmin-Config-Automatically
Rails.application.config.to_prepare do
  RailsAdmin::ApplicationController.class_eval do
    before_action :reload_rails_admin, if: :rails_admin_reload?

    def reload_rails_admin
      RailsAdmin::Config.reset

      load Rails.root.join('config', 'initializers', 'rails_admin.rb')

      # modelを再読み込みするため一旦忘れさせる
      Rails.application.eager_load!
      ActiveRecord::Base.descendants.map(&:name).each do |model_name|
        next if model_name.match?(/^(Active|Application)/)

        Object.send(:remove_const, model_name.to_sym) if Object.const_defined?(model_name.to_sym)
      end

      # modelを読み込む
      Dir.glob(Rails.root.join('app', 'models', '**', '*')).each do |full_path|
        next if File.directory?(full_path)

        load full_path
      end
    end

    def rails_admin_reload?
      Rails.env.development?
    end
  end
end
