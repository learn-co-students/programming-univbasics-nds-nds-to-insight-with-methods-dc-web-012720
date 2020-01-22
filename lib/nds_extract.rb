$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 movie = 0
 total = 0
 while movie < director_data[:movies].length do
   total += director_data[:movies][movie][:worldwide_gross]
   movie += 1
  end
return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 directors = 0
  result = {}
  while directors < nds.length do
    result[nds[directors][:name]] = 0
    movie = 0
    total = 0
    while movie < nds[directors][:movies].length do
      total += nds[directors][:movies][movie][:worldwide_gross]
      movie += 1
    end
    result[nds[directors][:name]] = total
  directors += 1
  end
return result  
end
