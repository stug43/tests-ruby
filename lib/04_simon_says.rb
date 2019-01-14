def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, reps=2)
	return ("#{string} "*reps).rstrip
end

def start_of_word(string, size)
	return string[0..(size-1)]
end

def first_word(string)
	return string.split[0]
end

def titleize(string)
	littlewords = ["or","and","the","for","but","nor","yet","so"]
	array = string.split.map! {|k| (!(littlewords.include?(k))? k.capitalize : k)}
	array.first.replace(array.first.capitalize)
	return array*" "
end

puts titleize("a story only begins with a spacestar")
