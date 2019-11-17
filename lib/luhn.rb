module Luhn
	def self.is_valid?(number)
		digits = number.to_s.split("")
 		
 		if !(digits.length == 15 || digits.length == 16) 
 			return false
 		end

		total = 0
		reversedigits = digits.reverse
	
		reversedigits.each_with_index do |item,index| 
		index.to_s + " " + item.to_s	

			num = item.to_i
			if index.odd?
				num = num * 2

				if num >=10 
					num = num - 9

				end
			end
			total = total + num
		end
		
		valid = total %10 
		if valid == 0
			return true
		else
			return false
		end
	end
end
