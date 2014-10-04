class Personality < ActiveRecord::Base
  has_many :tastes
  delegate :do, :eat, :go, :listen, :read, :shop, to: :tastes
  self.inheritance_column = :name

  validates :name, presence: true
  scope :escape_artist, -> { where(name: 'EscapeArtist') }
  scope :intelligentsia, -> { where(name: 'Intelligentsia') }
  scope :realist, -> { where(name: 'Realist') }
  scope :sartorialist, -> { where(name: 'Sartorialist') }
  scope :techie, -> { where(name: 'Techie') }

  class << self
    def categories
      %w(EscapeArtist Intelligentsia Realist Sartorialist Techie)
    end
  end

end

