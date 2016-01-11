def add (n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum array
	array.inject(0) { |prev,other| prev + other}
end

def multiply (*numbers)
	numbers.inject(1) { |prev,other| prev * other }
end

def power (base,pow)
	base**pow
end

def factorial(n1)
	array = (0..n1).to_a
	array.inject(0) { |prev,other| prev * other }
end