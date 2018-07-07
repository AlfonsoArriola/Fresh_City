class Train < ApplicationRecord
	validates :name, :presence => true, :uniqueness => true
	has_many :trains_sites
	has_many :sites, through: :trains_sites
end
