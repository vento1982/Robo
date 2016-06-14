class Category < ActiveRecord::Base
	has_many :products

	validates :name, presence: true, length: {maximum: 50}

	def to_param
		"#{id}-#{name}".parameterize
	end
end
