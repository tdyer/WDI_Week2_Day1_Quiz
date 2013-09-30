module Log

	def initialize
	  @log = []
	end

	def entry(info)
	  @log << info
	end

end
