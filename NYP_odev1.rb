#!/usr/bin/env ruby
class Vehicle

	attr_reader :type,:county,:price

	def initialize (type,county,price)
		@type = type
		@county = county
		@price = price
	end

	def expensive?(other)
		@price > other.price
	end

	def cheaper?(other)
		@price < other.price
	end

	def equal?(other)
		@price == other.price
	end

	def discount(amount)
		@price-amount
	end

	def raise(amount)
		@price+amount	
	end

end

def is_equal?(value1, value2)

	print "İki aracın fiyatları eşit"
	puts (value1.equal?(value2) ? 'tir.' : ' değildir.')

end

def is_cheaper?(value1,value2)

	print "İki aracın fiyatlarından #{value1.county}'daki #{value1.type}'nin fiyatı daha pahalı"
	puts (value1.cheaper?(value2) ? ' değildir.' : 'dır.' )

end

def is_expensive?(value1,value2)

	print "İki aracın fiyatlarından #{value1.county}'daki #{value1.type}'nin fiyatı daha ucuz"
	puts (value1.expensive?(value2) ? ' değildir.' : 'dur.' )

end

def discount_price(value1,value2)

	puts "#{value1.county}'daki #{value1.type}'nin indirimli fiyatı #{value1.discount(value2)}."

end

def raise_price(value1, value2)

	puts "#{value1.county}'daki #{value1.type}'nin zamlı fiyat #{value1.raise(value2)}."

end

def main

    p = Vehicle.new("Taksi", "Samsun", 20000) 
    q = Vehicle.new("Kamyon", "Kırşehir",80000)   
    

    is_equal?(p,q)   
    is_cheaper?(p,q)
    is_expensive?(p,q)
    discount_price(p,2000) 
    raise_price(p,2000) 
    
end

main if __FILE__ == $PROGRAM_NAME
