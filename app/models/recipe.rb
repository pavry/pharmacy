class Recipe < ApplicationRecord

	# validations
	validates :totalPrice, presence: true
	validates :customer_id, :number, uniqueness: true 
	validates :age, inclusion: { in: %w(adult baby), message: "%{value}
    is not a valid value" }

    # associations
    belongs_to :user
    #has_many :medicines, through :recipe_use

    # scope
    scope :use, -> { where(use: true) }
end
