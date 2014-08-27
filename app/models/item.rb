class Item < ActiveRecord::Base
	#attr_accessible :name, :price, :real, :weight, :description 

	validates :price, numericality: {greater_than: 0, allow_nil: true}
	validates :name, :description, presence: true

	has_many :positions
	has_many :carts, through: :positions
end
