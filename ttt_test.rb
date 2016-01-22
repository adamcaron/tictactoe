# write a program that evaluates a tic tac toe board

# given a board the particular state of that board,
# evaluate if there's a winner
# if there IS a winner, which 'team'

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './ttt'

class TicTacToeRefTest < Minitest::Test

  def test_the_class_exists
    assert TicTacToeRef
  end

  def test_the_ref_knows_a_boards_topleft_value
    board = {
      top_left: 'x',
      top_center: 'x',
      top_right: 'x',
      middle_left: 'o',
      middle_center: '',
      middle_right: '',
      bottom_left: '',
      bottom_center: 'o',
      bottom_right: ''
    }

    assert_equal 'x', TicTacToeRef.read(board, 'top_left')
  end

  def test_it_recognizes_a_horizontal_winner
    board = {
      top_left: 'x',
      top_center: 'x',
      top_right: 'x',
      middle_left: 'o',
      middle_center: '',
      middle_right: '',
      bottom_left: '',
      bottom_center: 'o',
      bottom_right: ''
    }

    assert TicTacToeRef.winner?(board)
  end

  def test_it_recognizes_a_vertical_winner
    board = {
      top_left: 'x',
      top_center: '',
      top_right: 'x',
      middle_left: 'x',
      middle_center: '',
      middle_right: '',
      bottom_left: 'x',
      bottom_center: 'o',
      bottom_right: ''
    }

    assert TicTacToeRef.winner?(board)
  end

  def test_it_recognizes_a_downward_diagonal
    board = {
      top_left: 'x',
      top_center: '',
      top_right: '',
      middle_left: 'x',
      middle_center: 'x',
      middle_right: '',
      bottom_left: '',
      bottom_center: 'o',
      bottom_right: 'x'
    }

    assert TicTacToeRef.winner?(board)
  end

  # check for a certain combination of positions

  #  receive a board

# {
#   top_left: ,
#   top_center: ,
#   top_right: ,
# }

#

# know if there's a winner:
# a winner is 3 positions "in a row" of the same element (X or O) but not empty element
# "in a row" = an entire horizontal row
#            =  an entire column
# downward diagonal = top_left, center_center, bottom_right
# upward diagonal   = bottom_left, center_center, top_right

end