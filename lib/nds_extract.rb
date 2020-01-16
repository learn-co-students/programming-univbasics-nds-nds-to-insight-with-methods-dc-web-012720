$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  index = 0
grand_total = 0

movie = director_data[:movies]

while index < movie.length do
   grand_total += director_data[:movies][index][:worldwide_gross]
   index += 1
end
 grand_total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.count do
    grand_total = 0
    element_index = 0 
    name = nds[row_index][:name]
    name
        while element_index < nds[row_index][:movies].count do
        grand_total += nds[row_index][:movies][element_index][:worldwide_gross]
        element_index += 1 
        end
  result[name] = grand_total
  row_index += 1
end
 result
end
