class Check
  def display_board(board)
    " +---+---+---+
    | #{board[0]} | #{board[1]} | #{board[2]} |
     +---+---+---+
     | #{board[3]} | #{board[4]} | #{board[5]} |
     +---+---+---+
     | #{board[6]} | #{board[7]} | #{board[8]} |
     +---+---+---+"
  end

  def cell_check(cell, person, arr1, arr2)
    if (arr1.include? cell) || (arr2.include? cell)
      puts 'Cell position has been taken, select a new cell'
      false
    elsif (1..9).include? cell
      if person == 1
        arr1 << cell
      else
        arr2 << cell
      end
      true
    else
      puts 'Invalid selection, Please enter a valid number between 1-9'
      false
    end
  end
end
