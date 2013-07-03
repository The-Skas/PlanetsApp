class Planet < ActiveRecord::Base
  attr_accessible :mass, :moons, :name, :orbit, :period, :rings, :planet_type

  #Use this to create functions for sqls
  scope :potentially_habitable, lambda { where(orbit: (0.8..1.4)).where(planet_type:'m')}
end
