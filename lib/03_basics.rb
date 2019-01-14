def who_is_bigger(a,b,c)
	if (a!=nil)&&(b!=nil)&&(c!=nil)
		if ((a>b)&&(a>c))||((a>b)&&(b==c))
			return "a is bigger"
		elsif ((b>a)&&(b>c))||((b>a)&&(a==c))
			return "b is bigger"
		elsif ((c>a)&&(c>b))||((c>a)&&(a==b))
			return "c is bigger"
		else
			return "a, b and c are equals"
		end
	else
		return "nil detected"
	end
end

def reverse_upcase_noLTA(string)
	return string.reverse.upcase.delete("LTA")
end

def array_42(tab)
	return tab.include?(42)
end

def magic_array(tab)
	return tab.flatten.sort.uniq.map!{|x| x*2}.keep_if{|k|k%3!=0}
end
