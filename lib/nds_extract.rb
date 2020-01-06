$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  grossHash = Hash.new
  i = 0
  totalSum= 0
  while i < director_data[:movies].length do
    totalSum += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return grossHash[director_data[:name]] = totalSum
end

def directors_totals(nds)
  result = Hash.new
  i = 0
  while i < nds.length do
    totalSum = 0
    currentDirector = nds[i][:name]
    totalSum = gross_for_director(nds[i])
    result[currentDirector] = totalSum
    i += 1
  end
  return result
end
