require 'grid'

describe Grid do

  let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600'}

  let(:grid) {Grid.new(puzzle)}


  context "initializing a structure" do

    it "is a puzzle of 81 values" do
      expect(grid.puzzle.flatten.count).to eq(81)
    end

    it "should have a first value of '0'" do
      expect(grid.cell_at(0,0)).to eq(0)
    end

    it "should have a third value of '5'" do
      expect(grid.cell_at(0,2)).to eq(5)
    end

    end

  context "solving the puzzle" do
        
    it "should be unsolved if the value is '0'" do
      expect(grid.unsolved?(grid.cell_at(0,0))).to be_true
    end

    it "should be solved if the value is between 1 and 9" do
      expect(grid.unsolved?(grid.cell_at(0,2))).to be_false
    end

  end

  context "knowing your neighbours" do

    it "should have 9 rows" do
      expect(grid.puzzle.count).to eq(9)
    end

    it "should have 9 rows of 9 cells" do
      expect(grid.puzzle[0].count).to eq(9)
    end

    it "should have 9 columns" do
      expect(grid.puzzle_column.count).to eq(9)
    end

    it "should have 9 columns of 9 cells" do
      expect(grid.puzzle_column[0].count).to eq(9)
    end

    it "a cell should know the values in it's neighbouring row and column" do
      expect(grid.neighbours(grid.cell_at(0,0))).to match_array [0, 1, 5, 3, 2, 4, 9, 8]
    end

  end
    
end



