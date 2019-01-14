def translate(string)
	mytab = []
	string.split.map! do |k|
		newword = k
		if (k =~ /qu/) != nil
			if (k =~ /qu/) < (k =~ /["aeiouAEIOU"]/)
				newword = [k.slice(0..(k =~ /u/)), k.slice(((k =~ /u/)+1)..-1)].reverse*""
				mytab << newword
			end
		elsif ((k =~ /["aeiouAEIOU"]/)!=nil)&&((k =~ /["aeiouAEIOU"]/)>0)
			newword = [k.slice(0..(k =~ /["aeiouyAEIOUY"]/)-1), k.slice((k =~ /["aeiouyAEIOUY"]/)..-1)].reverse*""
			mytab << newword
		else
			mytab << newword
		end	
	end
	mytab.map! {|k| k + "ay"}
	return mytab*" "
end

puts translate("apple")
