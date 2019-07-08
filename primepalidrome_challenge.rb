# prompts uset to enter value
def prompt(promptMsg)
	print promptMsg
	gets.to_i
end
# checks if number entered is a prime
def isPrime(num)
    (2..(num / 2)).each { |i|
        if (num % i == 0)
            return false
        end
    }
    true
end
# checks if string value is a palidrome
def isPalidrome(str)
    str == str.reverse
end
# checks if number is a prime and a palidrome
def isPrimePalidrome(num)
    isPalidrome(num.to_s) ? isPrime(num) : false # palidrome check costs less for bigger primes (do first)
end

puts (2..Float::INFINITY).lazy.select {	# or use print without the trailing inspect method
    |i| isPrimePalidrome(i)}.map {|i| i
    }.first(prompt "Enter the number of Prime Palidromes to list: ").inspect