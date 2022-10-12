class HomeController < ApplicationController
  def index
    breadcrumbs.add "Home", root_path, id: "home", title: "Go to the home page"
  end
end
