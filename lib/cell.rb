class Cell 

attr_accessor:value

def filled_out?
  value
end

def possible_values (neighbours)
  full_range = Array (1..9)
  full_range - neighbours
  end



    
end