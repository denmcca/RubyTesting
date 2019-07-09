# each_with_index method demo
def skip_elements(elements, skip) # array, number of elements to skip from index zero
    # array to return
	returnedElems = Array.new
	# extracting each element with accompaning index value
    elements.each_with_index do |elem, idx|
        returnedElems.push "#{idx}:#{elem}" unless idx < skip
    end
	# return array with elements that weren't skipped
    returnedElems
end