class LoginController < ApplicationController
  def login
    @login_active = "active"
    @password_valid = User.check_password
  end

  def register
  end
  
  def forum
    @forum_active = "active"
  end
end
