require 'pry'

def my_all?(collection)
  i = 0   # set counter 
  block_return_values = []    # create array for return values
  while i < collection.length   # loop through array
    block_return_values << yield(collection[i])   # yield item to block and push return to array
    i += 1    # increment counter by 1
  end
  block_return_values.include?(false) ? false : true    # check for false in return values
  # if block_return_values.include?(false)
  #   false
  # else
  #   true
  # end
end

