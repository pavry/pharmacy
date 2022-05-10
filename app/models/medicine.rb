class Medicine < ApplicationRecord

	# validations
	validates :name, :price, presence: true
	validates :price, numericality: { greater_than: 0 }
	validates :description, length: { maximum: 3000 }
	validates :age, inclusion: { in: %w(adult baby), message: "%{value}
    is not a valid value" }

    # associations
    belongs_to :user, optional: true

end
