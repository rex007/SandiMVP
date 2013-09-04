class Eventi < ActiveRecord::Base

	scope :upcoming, ->{where('zacetek > ?', DateTime.now)}
	scope :past,     ->{where('zacetek < ?', DateTime.now)}
end
