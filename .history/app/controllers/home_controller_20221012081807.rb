class HomeController < ApplicationController
  breadcrumbs.add "Home", root_path, id: "home", title: "Go to the home page"
  def index
  end
end
