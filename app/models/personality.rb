class Personality < ActiveRecord::Base
  has_many :tastes
  delegate :do, :eat, :go, :listen, :read, :shop, to: :tastes
end
