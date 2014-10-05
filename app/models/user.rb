class User < ActiveRecord::Base

  validates :name, :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true

  has_secure_password


  def is_admin?
     (self.role =~ /admin/) == 0 ? true : false
  end

  def role_value
    case self.role
    when 'admin'      then 2
    when 'customer'   then 1
    else 0; end
  end
end
