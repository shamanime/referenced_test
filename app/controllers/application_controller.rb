class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def get_user
    user = ["Jefferson", "Rodrigo", "Josh", "Rafael", "Jean"]
    user[rand(4)]
  end
end
