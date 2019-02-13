collection = [1,2,3,4,5]
def my_select(collection)
  if block_given?
    i =0
    new_array = [] #does not modify the original appropriately
    while i<collection.length
      new_array << yield(collection[i])
    i+=1
    end
  else
    return
  end
  new_array
end

my_select(collection) do
  |element|
element
end
