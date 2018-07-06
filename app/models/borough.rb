class Borough < ApplicationRecord
	validates :name, :presence => true, :uniqueness => true
end
