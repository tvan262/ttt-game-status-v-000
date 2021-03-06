# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#WIN_COMBINATIONS
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[2,4,6],[0,4,8],[1,4,7],[0,3,6],[2,5,8]]
#won?

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
         return win_combination
  end
end
nil
end

#full?
def full?(board)
  board.each do |position|
    if position == " "
    return false
  else
     true
  end
end
end

#draw?
def draw?(board)
  if full?(board) && !won?(board)
else
  return false
end

#over?
def over?(board)
  draw?(board) || full?(board) || won?(board)
end

#winner?
def winner(board)
  win_combination = won?(board)
if win_combination
  board[win_combination[0]]
else
  nil
end
end
end
