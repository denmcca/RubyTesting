def prompt(promptMsg)
	print promptMsg
	gets.to_i
end

factorial = -> (n) do
	(1..n).inject(1) {|sum, i| sum * i}
end

combination = -> (n) do
    -> (r) do
        factorial.(n) / 
            factorial.(r) /
            factorial.(n - r)
    end
end

n = prompt "enter how many there are to choose from the set: "
r = prompt "enter how many should be chosen from the set: "
print "number of possible combinations: "
nCr = combination.(n)
puts nCr.(r)