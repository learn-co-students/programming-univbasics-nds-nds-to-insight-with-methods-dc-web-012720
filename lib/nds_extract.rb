$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds, element_index)
    total = 0
    new_index = 0
    
    #extract numbers
    while new_index < nds[element_index][:movies].length do
      total = total + nds[element_index][:movies][new_index][:worldwide_gross]
      new_index += 1
    end
  total
end

def directors_totals(nds)
  element_index = 0
  result = {}
  
  #while element index is less than num of directors
  while element_index < nds.length do
    result[nds[element_index][:name]] = gross_for_director(nds, element_index)
    element_index += 1
  end
  result
end

puts directors_totals(directors_database)
