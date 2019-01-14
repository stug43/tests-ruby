def time_string(seconds)
	def twodigits(n)
		return (n<10? "0": "") + n.to_s
	end
	hours = seconds/3600
	minutes = (seconds%3600)/60
	return twodigits(hours)+":"+twodigits(minutes)+":"+twodigits((seconds%3600)%60)
end
