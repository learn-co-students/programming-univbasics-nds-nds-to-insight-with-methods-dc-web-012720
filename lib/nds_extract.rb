$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  count = 0
  
  while count < director_data[:movies].length do
      gross += director_data[:movies][count][:worldwide_gross]
      count += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  count = 0
  result = {}
  
  while count < nds.length do
    result[nds[count][:name]] = gross_for_director(nds[count])
    count += 1
  end
  result
end
