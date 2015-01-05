module CarsHelper


	def options_for_make
		Make.all.map{ |make| [make.name, make.id] }
	end

	
end
