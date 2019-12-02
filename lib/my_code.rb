def map(source_array)
  new_array = []
  source_array.each do |item|
    new_array.push(yield(item))
  end
  new_array
end

def reduce(source_array, start = nil)
  result = start
  source_array.each do |item|
    result = yield(result, item)
  end
  result
end