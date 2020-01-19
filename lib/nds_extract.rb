$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].length do
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
i=0
j = 0
total={}
while i < nds.length do
  the_name = nds[i][:name]
  total[the_name] = 0
  j = 0
  while j < nds[i][:movies].length do
    total[the_name] += nds[i][:movies][j][:worldwide_gross]
    j += 1
  end
  i += 1
end
total
end