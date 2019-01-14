def translate(string)
	mytab = []
	string.split.map! do |k|
		if (k =~ /["aeiouAEIOU"]/) > 0
			if (k =~ /qu/) != nil
				if (k =~ /qu/) < (k =~ /["aeiouAEIOU"]/)
					newword = [k.slice(0..(k =~ /qu/)+1), k.slice((k =~ /qu/)..k.length-1)].reverse*""
					mytab << newword
					break
				end
			else newword = [k.slice(0..(k =~ /["aeiouyAEIOUY"]/)-1), k.slice((k =~ /["aeiouyAEIOUY"]/)..-1)].reverse*""
                                        mytab << newword
			end
		elsif ((k =~ /["aeiouAEIOU"]/)==nil)||((k =~ /["aeiouAEIOU"]/)==0)
			mytab << k
		end
	end
	mytab.map! {|k| k + "ay"}
	return mytab*" "
end

puts translate("apple")
