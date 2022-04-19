class Order < ApplicationRecord

	# validations
	validates :totalPrice, :state, presence: true
	validates :state, inclusion: { in: %w('in progress', 'completed', 'shipped'), message: "%{value}
    is not a valid value" }

    # associations
    belongs_to :user
end
