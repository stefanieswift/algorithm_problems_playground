#see if someone won tic tac toe

#see if someone won tic tac toe

def tic_tac_toe_checker?(nested_array_board)
    a = nested_array_board.select{|x| x if x.uniq.length == 1}
    b = nested_array_board[0].zip(nested_array_board[1], nested_array_board[2]).select{|x| x if x.uniq.length == 1}
    c = [[nested_array_board[0][0],nested_array_board[1][1],   nested_array_board[2][2]], [nested_array_board[0][2],nested_array_board[1][1],   nested_array_board[2][0],]].select{|x| x if x.uniq.length == 1}
  if a.length > 0
    if a.flatten.uniq.join("") == "x"
      return 2
    else
      return 0
    end
  elsif b.length > 0
    if b.flatten.uniq.join("") == "x"
      return 2
    else
      return 0
    end
  elsif c.length > 0
    if c.flatten.uniq.join("") == "x"
      return 2
    else
      return 0
    end
  else
    return -1
  end
end

p tic_tac_toe_checker?([["x","o","x"],["o","x","o"],["o","o","x"]])