require 'bcrypt'

class User < ActiveRecord::Base

  validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create

  validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update, :unless => lambda{ |user| user.password.blank? }

  has_many :children


  def password
    @password
  end

  def password=(new_password)
    @password = new_password
    self.hashed_password = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if BCrypt::Password.new(self.hashed_password) == test_password
      self
    else
      false
    end
  end

end
