#require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data) 
  #director_data is a hash 

      movie_index = 0 
      gross_total = 0 
      while movie_index < director_data[:movies].length do
    
      gross_total += director_data[:movies][movie_index][:worldwide_gross]
    
      movie_index += 1
      end
  
  gross_total
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  directors_totals = {}
  row_index = 0 
  while row_index < nds.length do 
    
    key_name = nds[row_index][:name]
    directors_totals[key_name] = gross_for_director(nds[row_index])
    row_index += 1 
    
  end 
  directors_totals
end

     
    
# [{ :name => "Test Director", :movies => []}]
# # { directorOne => allTheMoneyTheyMade, ... }
# expect(directors_totals([{ :name => "Test Director", :movies => []}])).to be_a(Hash)

