class Pawn
	def initialize(x,y,f,c)
		@x = x 
		@y = y  
		@f = f 
		@c = c
	end

	def place(x,y,f,c)
		@x = x 
		@y = y 
		@f = f 
		@c = c 
	end

	def move
    case @f
    when 'NORTH'
      @y += 1 if @y < 7
    when 'EAST'
      @x += 1 if @x < 7
    when 'SOUTH'
      @y -= 1 if @y > 0
    when 'WEST'
      @x -= 1 if @x > 0
    end
  end

	def left
		case @f 
		when 'NORTH'
			@f = 'WEST'
		when 'EAST'
			@f = 'NORTH'
		when 'WEST'
			@f = 'SOUTH'
		when 'SOUTH'
			@f = 'EAST'
		end
	end

	def right
		case @f 
		when 'NORTH'
			@f = 'EAST'
		when 'WEST'
			@f = 'NORTH'
		when 'SOUTH'
			@f = 'WEST'
		when 'EAST'
			@f = 'SOUTH'
		end
	end

	def report
		puts "#{@x}, #{@y},#{@f},#{@c}"
	end
end
