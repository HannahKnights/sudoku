class Grid


  def initialize (puzzle)
    @puzzle = (puzzle.split('').map {|cell| cell.to_i}).each_slice(9).to_a
  end

  def puzzle 
    @puzzle
  end

  def puzzle_column
    @puzzle.transpose
  end

  def cell_at (row, column)
   @row = row
   @column = column
   @puzzle[@row][@column]
  end

  def unsolved?(cell_at)
   cell_at == 0
  end

  def neighbours(cell_at)
   @neighbours = (puzzle[@row] + puzzle_column[@column]).to_a.uniq
  end
    
end