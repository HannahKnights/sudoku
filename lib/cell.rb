class Cell 

attr_accessor:value

def filled_out?
  value
end

def possible_values (neighbours)
  (1..9).to_a - neighbours
end

def solve (neighbours)
  value = possible_values(neighbours)
  if value.length == 1
    self.value = (value[0])
  end
end

end