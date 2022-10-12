class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_filter :add_initial_breadcrumbs

  private
  def add_initial_breadcrumbs
    breadcrumbs.add "Home", root_path
  end
end
