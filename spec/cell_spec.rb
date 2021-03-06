require 'cell'

describe Cell do 

  let (:cell) {Cell.new}

  it "should be empty" do
    expect(cell).to_not be_filled_out
  end
    
  it "should be able to have a value" do
    cell.value = 5
    expect(cell.value).to eq(5)
  end

  it "should not be empty if it has a value" do
    cell.value = 5
    expect(cell).to be_filled_out
  end

  context "should know it's possible value" do

    it "given all values except one" do
      expect(cell).to_not be_filled_out
      neighbours = [1,2,3,4,5,6,7,8]
      expect(cell.possible_values(neighbours)).to eq([9])
    end

    it "given all values except two" do
      expect(cell).to_not be_filled_out
      neighbours = [1,2,3,4,5,6,7]
      expect(cell.possible_values(neighbours)).to eq([8,9])
    end

  end

  context "should know how to solve itself" do
  
    it "knows if it only has one solution" do
      expect(cell).not_to be_filled_out
      neighbours = [1,2,3,4,5,6,7,8]
      cell.solve(neighbours)
      expect(cell.value).to eq(9)
    end

    it "knows not to solve itself if it has more than one solution" do
      expect(cell).not_to be_filled_out
      neighbours = [1,2,3,4,5,6,7]
      cell.solve(neighbours)
      expect(cell).not_to be_filled_out
    end


  end

end