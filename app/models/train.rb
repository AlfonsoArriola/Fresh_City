class Train < ApplicationRecord
	has_many :site_trains
	has_many :sites, through: :site_trains
end
