$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  count = 0
  sum = 0
  while director_data[:movies][count] do
    sum += director_data[:movies][count][:worldwide_gross]
    count += 1
  end
  
  return sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  count = 0;
  while nds[count] do
    key = nds[count][:name]
    value = gross_for_director(nds[count])
    result[key] = value
    count += 1
  end
  return result
end
