class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  attr_accessor :new_password, :new_password_confirmation
  validates_confirmation_of :new_password, :if => :password_changed?
  def password_changed?
    !@new_password.blank?
  end
  private
  def hash_new_password
  end

  def self.authenticate(email, password)
    if user = find_by_email(email)
      if BCrypt::Password.new(user.hashed_password).is_password? password
        return user
      end
    end
  end

  def self.check_password
    true
  end

end
