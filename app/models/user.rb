class User < ApplicationRecord

	# validations
	validates :name, :email, presence: true
	validates :name, length: { in: 2..255 }
	validates :password, length: { in: 6..255 } 
	validates :email, uniqueness: true 
	validates :email, format: { 
    with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
    validates :role, inclusion: { in: %w(customer doctor pharmacist), message: "%{value}
    is not a valid value" }


    # associations
    has_many :recipes, foreign_key: "customer_id"
    has_many :orders, foreign_key: "order_id"


    # scope
    scope :admins, -> { where(role: 'doctor') & where(role: 'pharmacist') }
    scope :three_days_ago, -> { where("created_at >= ?", Time.now - 3.days) }
    scope :active, -> { where(is_active: true) }
    scope :inactive, -> { where(is_active: false) }


    def is_doctor?
        role == 'doctor'
    end

end
