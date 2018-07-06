class ProspectSite < ApplicationRecord
	validates :name, :comment, :presence => true, :uniqueness => true
end
