isWorking = true

puts "started at #{Time.now}"

t1 = Thread.new{
    puts "new thread begins..."
    
	i = 0
	
    while i < 10 do
        sleep(1)
		i += 1
		puts "#{i}(s)"
    end
    
	isWorking = false
}

while isWorking do
	puts "waiting for new thread to finish..."
	sleep(3)
end

t1.join

puts "new thread complete..."

puts "finished at #{Time.now}"