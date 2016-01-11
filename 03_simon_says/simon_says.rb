def echo word
	word
end

def shout word
	word.upcase
end

def repeat(word, time = 2)
	the_word = word
	(time-1).times do 
		word = word + " " + the_word
	end
	word
end

def start_of_word(word,pos)
	word.slice(0,pos)
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize word
	array = word.split(" ")
	array.each_index do |x|
		if array[x] != "and" && array[x] != "over" && array[x] != "the" 
			array[x].capitalize!
		elsif x == 0
			array[x].capitalize!
		end
	end
	array.join(" ")
end