class Restaurant < ApplicationRecord

	belongs_to :owner
	has_many :reservations
	validates :name, presence: true,
						length: {minimum: 3 }
	validates :cuisine, presence: true,
						length: {minimum: 3 }
	validates :address, presence: true,
						length: {minimum: 4 }
end
