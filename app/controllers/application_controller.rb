# frozen_string_literal: true

# 基底コントローラー
class ApplicationController < ActionController::Base
  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      rails_admin_path
    else
      root_path
    end
  end
end
