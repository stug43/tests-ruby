def add(numbersto, add)
	return numbersto + add
end

def subtract(numbersto, subtract)
        return numbersto - subtract
end

def sum(tab)
	summation = 0
	tab.each do |k|
		summation += k
	end
	return summation
end

def multiply(numbersto, multiply)
	return numbersto * multiply
end

def power(number, power)
	result = 1
	if power > 0
		while power > 0
			result *= number
			power -= 1
		end
	elsif power <0 
		while power < 0
			transition *= number
			power += 1
		end
		result = (1.0/transition)
	end
	return result
end

def factorial(x)
	result = 1
	while x > 0
		result *= x
		x -= 1
	end
	return result
end

