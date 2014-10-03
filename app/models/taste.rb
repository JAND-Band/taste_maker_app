class Taste < ActiveRecord::Base
  belongs_to :personality
  self.inheritance_column = :category

  validates :category, presence: true
  scope :do, -> { where(category: 'Do') }
  scope :eat, -> { where(category: 'Eat') }
  scope :go, -> { where(category: 'Go') }
  scope :listen, -> { where(category: 'Listen') }
  scope :read, -> { where(category: 'Read') }
  scope :shop, -> { where(category: 'Shop') }

  class << self
    def categories
      %w(Do Eat Go Listen Read Shop)
    end
  end


end
