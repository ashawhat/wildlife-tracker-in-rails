class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :location, :presence => :true
  validates :species_id, :presence => :true
end
