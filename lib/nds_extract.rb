$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  counter = 0 
  total = 0
  while counter < director_data[:movies].count do
    total += director_data[:movies][counter][:worldwide_gross]
    counter += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.count do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
