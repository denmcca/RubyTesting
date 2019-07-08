#Location numeral challenge
#Write method that converts integer to location numeral
def intToLocNum(num)
	locNumStr = ""
	while num > 0
		locNum = Math.log(num, 2).floor
		num -= 2**locNum
		locNumStr += (97 + locNum).chr
	end
	locNumStr.reverse
end

#Converts location numeral to integer
def locNumToInt(str)
	num = 0
	str.split('').each {|c|
		num += 2**(c.ord - 97)
	}
	num
end

#Reduce location numeral to abbreviated form
def abbrLocNum(locNumStr)
	intToLocNum locNumToInt locNumStr # can drop the parenthesis like so
end


puts intToLocNum(9)
puts locNumToInt("ad")
puts abbrLocNum('abbc')