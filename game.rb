require './pawn.rb'

pawn = Pawn.new(0, 0, 'NORTH', 'WHITE')
puts "Enter Input"
loop do
	input = gets.chomp 
 	command, args = input.split(' ', 2)
	case command
	when 'PLACE'
		x,y,f,c = args.split(',')
		pawn.place(x.to_i, y.to_i, f, c)
	when 'MOVE'
		pawn.move
	when 'RIGHT'
		pawn.right
	when 'LEFT'
		pawn.left
	when 'REPORT'
		pawn.report
	end
end
