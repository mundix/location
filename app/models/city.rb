class City < ActiveRecord::Base
  belongs_to :country
  has_many :sectors, dependent: :destroy

  validates :name, presence: true
end