class Site < ApplicationRecord
	# geocoded_by :address
	# after_validation :geocode, if: :address_changed?

	# validates :name, :cost :address, :phone, :location_type, :gender, :age_range, :days_of_the_week_and_hours_of_operation, :towel, :shower_shoe, :soap, :feminine_hygiene, :note, :website, :borough_id,   :presence => true, :uniqueness => true
	has_many :trains_sites
	has_many :trains, through: :trains_sites
	belongs_to :borough

end
