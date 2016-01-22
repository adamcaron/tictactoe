class TicTacToeRef
  def self.winner?(board)
    # take the board
    # check for a horrizontal winner,

    # meaning that an entire row shares the same symbol
    # row: positions with the same prefix
    # (ie. 'top', 'middle', 'bottom')

    if check_top_row(board)
      true
    # check middle row
    # check bottom row
    elsif check_left_column(board)
      # check for vertical winner
      true
    elsif downward_diagonal?(board)
      true
    end
  end

  def self.downward_diagonal?(board)
    if board[:top_left] == board[:middle_center] && board[:top_left] == board[:bottom_right]
      true
    end
  end

  def self.check_top_row(board)
    if board[:top_left] != ''
      if board[:top_left] == board[:top_center] && board[:top_left] == board[:top_right]
        true
      end
    end
  end

  def self.check_left_column(board)
    if board[:top_left] != ''
      if board[:top_left] == board[:middle_left] && board[:top_left] == board[:bottom_left]
        true
      end
    end
  end

  def self.read(board, position)
    board[position.to_sym]
  end
end