def translate word
	words = word.split(' ')

	words.map! do |value|
		if /^[aeiou]/ =~ value
			value = value + 'ay'
		elsif /^(qu)/ =~ value
			value = value.slice(2,value.length) + "quay"
		elsif /^([^aeiou])qu/ =~ value
			value = value.slice(3,value.length) + $1 + "quay"
		elsif (match = /[^aeiou]+/.match(value) )
			value = "#{match.post_match}" + "#{match}" + "ay"
		end
	end

	words.join(" ");
end

puts translate "square"