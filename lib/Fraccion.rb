class Fraccion

	attr_reader :n, :d
	def initialize (n,d)
		@n=n
		@d=d
	end

	def to_s
		"#{@n}/#{@d}"		
	end
	def min 
		a=gcd(@n,@d)

		@n = @n/a
		@d = @d/a

		if gcd(@n, @d) > 1
			self.min
		end
	end
			
end


