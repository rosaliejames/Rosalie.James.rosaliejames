# tictactoe.rb

#greet user 
puts "Hi, Welcome to Tic Tac Toe!"

#Set Up 
board = [[false," "], [false," "], [false," "], [false," "], [false," "], [false," "], [false," "], [false," "], [false," "]]
game_over= false
turn = 1

#user interface 
def print_board(board)
	puts " #{board[0][1]} | #{board[1][1]} | #{board[2][1]}"
	puts "---+---+---"
	puts " #{board[3][1]} | #{board[4][1]} | #{board[5][1]}"
	puts "---+---+---"
	puts " #{board[6][1]} | #{board[7][1]} | #{board[8][1]}"
end 

#conditions 

conditions = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2] ]

#check method 
def check (board, conditions) 
	conditions.each do |condition|
		if (board[condition[0]][1] != " ") && (board[condition[0]][1] == board[condition[1]][1]) && (board[condition[2]][1] == board[condition[0]][1]) 
			if board[condition[0]][1] == "X"
				winner = 1 
			else 
				winner = 2 
			end 
			puts "Congrats, player #{winner} wins!"
			return true
		else 
			return false
		end
	end 
end 

def cats_game (board)
	counter = 0 
	board.each do |square|
		counter +=1 if square[0] == true
	end 
	if counter == 9 
		puts "Cat's Game!" 
		return true
	else 
		return false
	end 
end 



#Game Play
while !game_over 

	# player 1 turn
	while turn == 1 
		puts "Player 1:"
		move = gets.strip
	
		#check input
		if move != "0" && move != "1" && move != "2" && move != "3" && move != "4" && move != "5" && move != "6" && move != "7" 
			puts "Error: Invalid input"
		elsif board[move.to_i][0] 
			puts "Error: Square Taken"
		else 
			board[move.to_i][0] = true
			board[move.to_i][1] = "X" 
			turn = 2 
		end 
		print_board(board)
	end 

	#check
	game_over = cats_game(board)
	break if game_over 

	game_over = check(board, conditions)
	break if game_over 

	#player 2 turn
	while turn == 2 
		puts "Player 2:"
		move = gets.strip 
	
		#check input
		if move != "0" && move != "1" && move != "2" && move != "3" && move != "4" && move != "5" && move != "6" && move != "7" 
			puts "Error: Invalid input"
		elsif board[move.to_i][0]
			puts "Error: Square Already Taken"
		else 
			board[move.to_i][0] = true
			board[move.to_i][1] = "O" 
			turn = 1 
		end
		print_board(board)
	end  

	game_over = cats_game(board)
	break if game_over 
	#check
	game_over = check(board, conditions)
	break if game_over


end 

#update player_turn boolean 
#get user input 
#update board (array)
#display board
#check if there's a winner

