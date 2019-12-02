def map(source_array)
  new_array = []
  source_array.each do |item|
    new_array.push(yield(item))
  end
  new_array
end

def reduce(source_array, start = 0)
  result = start
  source_array.each do |item|
    if item == true 
      return true 
    end
    result = yield(result, item)
  end
  result
end