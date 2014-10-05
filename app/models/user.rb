class User < ActiveRecord::Base

  validates :name, :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true
  # for use with geocoder
  geocoded_by :address
  after_validation :geocode # auto-fetch coordinates

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

  has_secure_password

#determines if user role is admin
  def is_admin?
     (self.role =~ /admin/) == 0 ? true : false
  end

#sets role values
  def role_value
    case self.role
    when 'admin'      then 2
    when 'customer'   then 1
    else 0; end
  end

  # methods for use with geocoder, can't tell if they work until we are uploade to Heroku
  def get_location
    @street = request.location.street
    @city = request.location.city
    @state = request.location.state
    @country = request.location.country
  end

  def get_longitude
    request.location.longitude
  end

  def get_latitude
    request.location.latitude
  end

  def address
    [@street, @city, @state, @country].compact.join(', ')
  end

end
