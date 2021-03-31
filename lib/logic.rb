class Logic
  def win
    win = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[3,5,7],[1,5,9]]
  end

  def get_param1(arr1)
    param1 = win.map {|a| a.intersection(arr1.sort)}.select {|a| a.length == 3}
    return param1
  end

  def get_param2(arr2)
    param2 = win.map {|a| a.intersection(arr2.sort)}.select {|a| a.length == 3}
    return param2
  end

  def check_win (param1, param2,per)
    if win.include? param1.flatten
      puts"#{per} wins"
      return true      
    elsif win.include? param2.flatten
      puts "#{per} wins"
      return true     
    else
      return false
    end
  end

end