class ProspectSite < ApplicationRecord
	validates :name, :location, :presence => true
end
