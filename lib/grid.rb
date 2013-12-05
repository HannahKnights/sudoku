class Grid


  def initialize (puzzle)
    puz = puzzle.split('').map {|cell| cell.to_i}
    @puzzle = puz.each_slice(9).to_a
  end

  def puzzle 
    @puzzle
  end

  def cell_at (row, column)
   @puzzle[row][column]
  end

  def unsolved?(cell_at)
   cell_at == 0
  end
    
end