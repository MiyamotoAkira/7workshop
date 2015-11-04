class Board
  def initialize(boardsize)
    @boardsize = boardsize
    @squares = Array.new(boardsize) {Array.new(boardsize, :empty)}
  end
  
  def occupy_square(rank, file)
    @squares[rank][file] = :occupied
  end

  def occupy_square_with(rank, file, key)
    @squares[rank][file] = keu
  end

  def traverse_all_squares()
    @squares.each_with_index do |val, rank|
      val.each_with_index do |square, file|
      end      
    end
  end

  def traverse_rank(rank)
    @squares[rank].each_with_index do |square, file|
    end
  end
end

board = Board.new(2)
board.occupy_square(1,1)
#board.traverse_all_squares 
#board.traverse_rank(1)
