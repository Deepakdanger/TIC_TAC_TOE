#!/usr/bin/env ruby

board = %w[1 2 3 4 5 6 7 8 9]
  
def display_board(board)
  s= "#{board[0]} | #{board[1]} | #{board[2]}\n#{board[3]} | #{board[4]} | #{board[5]}\n#{board[6]} | #{board[7]} | #{board[8]}\n"
  puts s
end

puts "Welcome to Tic-Tac-Toe v1.0"
puts "Press Enter to continue_"
blank = gets.chomp
puts "Welcome, player 1"
puts "Please input your game name..."
p1 = gets.chomp.upcase
puts 
puts "Welcome, player 2"
puts "Please input your game name..."
p2 = gets.chomp.upcase
puts 
puts "#{p1} plays with 'X' and #{p2} plays with 'O'"
puts
puts "INSTRUCTION!!!:Input the corresponding cell number in which you want to place your piece when prompted"
puts
puts "Let us get right to it!"
puts
puts
display_board(board)
puts
puts
session = true
while session
  puts "Player 1: Please choose a cell number "
  cell = gets.chomp.to_i
  if cell > 9 || cell <= 0
    puts "Invalid selection, Please enter a valid number between 1-9"
    cell = gets.chomp.to_i
  elsif cell.position_taken?
    puts "Cell position has been taken, select a new cell"
  end 


  puts "Player 2: Please choose a cell"
  cell = gets.chomp.to_i
  if cell > 9 || cell <= 0
    puts "Invalid selection, Please enter a valid number between 1-9"
  elsif cell.position_taken?
    puts "Cell position has been taken, select a new cell"
  end

end 
