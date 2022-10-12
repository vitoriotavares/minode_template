class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_filter :add_initial_breadcrumbs
end
