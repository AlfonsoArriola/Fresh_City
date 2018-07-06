class Site < ApplicationRecord
	geocoded_by :address
	# after_validation :geocode, if: :address_changed?

	validates :name, :address, :gender,  :days_of_the_week_and_hours_of_operation, :towel, :shower_shoe, :soap, :feminine_hygiene,   :presence => true, :uniqueness => true
	has_many :site_trains
	has_many :trains, through: :site_trains

end
