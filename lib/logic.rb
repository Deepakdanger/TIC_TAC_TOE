class Logic
  def win_logic
    win=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[3,5,7],[1,5,9]]
  end
  def check_win
    if win.include? arr
      return true
    else
      return false
    end
  end
   
end