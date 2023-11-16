class HomeController < ApplicationController
  def index
    @users = User.all.limit(16)
  end
end
