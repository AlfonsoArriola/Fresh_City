class Site < ApplicationRecord
	geocoded_by :address
	# after_validation :geocode, if: :address_changed?
	has_many :site_trains
	has_many :trains, through: :site_trains

end
