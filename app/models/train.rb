class Train < ApplicationRecord
	validates :name, :presence => true, :uniqueness => true
	has_many :site_trains
	has_many :sites, through: :site_trains
end
