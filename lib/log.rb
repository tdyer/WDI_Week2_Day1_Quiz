module Log
	attr_accessor :log

	$log = []

	def log_entry(info)
	  $log << info
	end

end
