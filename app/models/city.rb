class City < ActiveRecord::Base
  belongs_to :country
  has_many :sectors

  validates :name, presence: true
end