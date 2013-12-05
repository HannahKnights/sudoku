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
    end

  end
    
end