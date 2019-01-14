def translate(string)
	mytab = []
	string.split.map! do |k|
		newword = k
		if (k =~ /qu/) != nil
			if (k =~ /qu/) < (k =~ /["aeiouyAEIOUY"]/)
				newword = [k.slice(0..(k =~ /u/)), k.slice(((k =~ /u/)+1)..-1)].reverse*""
				mytab << newword
			end
		elsif ((k =~ /["aeiouyAEIOUY"]/)!=nil)&&((k =~ /["aeiouyAEIOUY"]/)>0)
			newword = [k.slice(0..(k =~ /["aeiouyAEIOUY"]/)-1), k.slice((k =~ /["aeiouyAEIOUY"]/)..-1)].reverse*""
			mytab << newword
		else
			mytab << newword
		end	
	end
	mystring = mytab.map! {|k| k + "ay"}*" "
	mytab = mystring.split.map! do |k|
		if (k =~ /\./) != nil
			k = k.delete(".") + "."
		elsif (k =~ /\,/) != nil
			k = k.delete(",") + ","
		elsif (k =~ /\!/) != nil
			k = k.delete("!") + "!"
		elsif (k =~ /\:/) != nil
			k = k.delete(":") + ":"
		elsif (k =~ /\;/) != nil
			k = k.delete(";") + ";"
		elsif (k =~ /\?/) != nil
			k = k.delete("?") + "?"
		else
			k
		end
	end
	return mytab*" "
end
