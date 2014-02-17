class Grid


  def initialize (puzzle)
    @puzzle = (puzzle.split('').map {|cell| cell.to_i}).each_slice(9).to_a
  end

  def puzzle 
    @puzzle
  end

  def cell_value (index)
    array = @puzzle.flatten
    array[index]
  end

  def cell_values (indexs)
    return_array = []
    indexs.each do |index|
      return_array << cell_value(index)
    end
    return_array
  end

  def row_indexes
    arr = []
    (0..80).to_a.each_slice(9){|s| arr << s}
    arr
  end

  def column_indexes
    row_indexes.transpose
  end

  def puzzle_column
    @puzzle.transpose
  end

  def puzzle_box_bluh
    @puzzle_index = (@row * 9) + @column
  end


  def puzzle_box
    @boxes = []
    first_cell_of_boxes = [0,3,6,27,30,33,54,57,60]
    first_cell_of_boxes.each do |i|
      boxes << [i,i+1, i+2, i+9, i+10, i+11,i+18, i+19,i+20 ]
    end
    @boxes
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
   @neighbours = (puzzle[@row] + puzzle_column[@column] + puzzle_box_bluh[@row][@column]).to_a.uniq
  end
    
end