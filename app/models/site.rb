class Site < ApplicationRecord
	geocoded_by :address
	after_validation :geocode

	BASE__ANSWER = ["Please, make a selection"]

	
	has_one_attached :image
	validates :address, :presence => true, :uniqueness => true
	validates :name,:location_type,:age_range,:days_of_the_week_and_hours_of_operation, :presence => true
	validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format, must be 777-777-7777 format." }
	
	validates :cost,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }
    validates :gender,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }
    validates :towel,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }
    validates :shower_shoe,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }
    validates :soap,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }
    validates :feminine_hygiene,  exclusion: { in: BASE__ANSWER,
    message: ": Must select other than the default selection." }

	has_many :trains_sites
	has_many :trains, through: :trains_sites
	belongs_to :borough

	


end
