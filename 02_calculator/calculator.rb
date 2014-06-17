def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

# sum an array of numbers
def sum(array_of_num)		
	tot = 0
	array_of_num.each {|num| tot += num }
	tot
end	

# multiple a series of numbers
def multiply(*nums)
	nums.reduce(1,:*)
end	

def factorial(x)
	if x == 0 || x == 1
		1
	else
		(1..x).inject(:*)
	end
end		