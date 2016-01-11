class Book
	attr_reader :title

 def title=(name)
 	words = name.split(" ")
 	words.collect!.with_index do |i,index|
 		if index == 0
 			i.capitalize!
 		elsif !(i == "a" || i == "the" || i =="in" || i == "and" || i == "of" || i == "an" || /\d+/ =~ i )
 			i.capitalize!
 		else
 			i
 		end

 	end
 	@title = words.join(" ")
 end

end

