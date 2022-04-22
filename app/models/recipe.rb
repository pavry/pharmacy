class Recipe < ApplicationRecord

	# validations
	validates :customer_id, :number, uniqueness: true 
	validates :age, inclusion: { in: %w(adult baby), message: "%{value}
    is not a valid value" }

    # associations
    belongs_to :user, foreign_key: "customer_id"

    # scope
    scope :use, -> { where(use: true) }
end
