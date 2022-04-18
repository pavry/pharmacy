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
    has_many :recipes, dependent: :destroy
    has_many :medicines, dependent: :destroy


    # scope
    scope :admins, -> { where(role: 'doctor') & where(role: 'pharmacist') }
    scope :active, -> { where(is_active: true) }
    scope :inactive, -> { where(is_active: false) }


    def data
        return :created_at
    end


end
