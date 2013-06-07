class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  has_secure_password

  validates :email,
    :presence => true,
    :uniqueness => true,
    :format => { :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }

  validates :password,
    :presence => { :on => :create },
    :length => { :minimum => 8 }

end
