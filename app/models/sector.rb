class Sector < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :city
end