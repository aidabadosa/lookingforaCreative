class Profile < ActiveRecord::Base
  validates :name, presence: true

  has_many :profiles
end
