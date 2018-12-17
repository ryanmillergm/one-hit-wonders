class Admin::CategoriesController < ApplicationController

  before_action :require_admin, only: [:index]

  def index
  end

  private
    def require_admin
      render file: "/public/404" unless current_admin?
    end
end
