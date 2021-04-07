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
      false
    elsif (1..9).include? cell
      if person == 1
        arr1 << cell
      else
        arr2 << cell
      end
      true
    end
    false
  end
end
