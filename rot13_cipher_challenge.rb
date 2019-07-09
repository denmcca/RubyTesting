# rot13 cypher challenge
def rot13(secret_messages) # array of strings
    # key maps for rot13 algo
    lowerKey = ('a'..'z').to_a
    upperKey = ('A'..'Z').to_a
    # array to return
    secret_decoded = Array.new
    # algorithm
    secret_messages.each do |msg|
		# split string into char array
        msg = msg.to_s.split('').map { |c|
			if c.ord >= 'a'.ord && c.ord <= 'z'.ord
                lowerKey[(c.ord - 97 + 13) % lowerKey.length]
            elsif c.ord >= 'A'.ord && c.ord <= 'Z'.ord
                upperKey[(c.ord - 65 + 13) % upperKey.length]
			else
				c
            end
        }
		# convert char arrays to strings
        secret_decoded << msg.join
    end
    
    # return strings inside an array
    secret_decoded
end

# one-liner!
=begin
def rot13(secret_messages)
  secret_messages.map {|m| m.tr!("a-z", "n-za-m")}
end
=end

msg = Array.new

msg << "This message must be ciphered!"

puts msg

cmsg = rot13(msg)

puts cmsg

dmsg = rot13(cmsg)

puts dmsg

