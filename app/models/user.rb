class User < ActiveRecord::Base

  validates :name, :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true

  has_secure_password

end
