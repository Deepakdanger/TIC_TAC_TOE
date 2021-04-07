#!/usr/bin/env ruby
require_relative '../lib/logic'
require_relative '../lib/player'
require_relative '../lib/board'
board = %w[1 2 3 4 5 6 7 8 9]

check1 = Check.new

puts 'Welcome to Tic-Tac-Toe v1.0'
player1 = Player.new
puts 'Welcome, player 1'
puts 'Please input your game name...'
select1 = false
while select1 == false
  @p1 = gets.chomp.upcase
  select1 = player1.name_check(@p1)
  p 'NAME SHOULD NOT BE BLANK' if select1 == false
end
puts
puts 'Welcome, player 2'
puts 'Please input your game name...'
select1 = false
while select1 == false
  @p2 = gets.chomp.upcase
  select1 = player1.name_check(@p2)
  p 'NAME SHOULD NOT BE BLANK' if select1 == false
end
puts
puts "#{@p1} plays with 'X' and #{@p2} plays with 'O'"
puts
puts 'INSTRUCTION!!!:Input the corresponding cell number in which you want to place your piece when prompted'
puts
puts 'Let us get right to it!'
puts
puts
puts check1.display_board(board)
puts
puts

param2 = []
arr1 = []
arr2 = []
session = true
turn = 0

while session
  checklist = Logic.new

  puts "#{@p1}: Please choose a cell number "
  turn += 1
  select1 = false
  while select1 == false
    num = 1
    cell = gets.chomp.to_i
    select1 = check1.cell_check(cell, num, arr1, arr2)
  end
  board[cell - 1] = 'X'
  puts check1.display_board(board)
  puts
  puts
  param1 = checklist.get_param1(arr1)
  param1 = param1.flatten
  p param1
  winner = checklist.check_win(param1, param2, @p1)

  if winner == true
    puts "Congratulations,#{@p1} wins the game!"
    puts
    puts 'GAME OVER'
    break
  end

  if turn == 9
    puts 'This game has ended in a TIE!'
    puts
    puts 'GAME OVER'
    break
  end

  puts "#{@p2}: Please choose a cell number "
  turn += 1
  select1 = false
  while select1 == false
    num = 2
    cell = gets.chomp.to_i
    select1 = check1.cell_check(cell, num, arr1, arr2)
  end
  board[cell - 1] = 'O'
  puts check1.display_board(board)
  puts
  puts
  param2 = checklist.get_param2(arr2)
  param2 = param2.flatten
  p param2
  winner = checklist.check_win(param1, param2, @p2)

  next unless winner == true

  puts "Congratulations,#{@p2} wins the game!"
  puts
  puts 'GAME OVER'
  break
end
