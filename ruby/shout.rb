module Shout
	def self.yell_angrily (words)
		words + "!!!" + " :("
	end
end

class human
include Shout
	end

	class monster
include Shout
	end