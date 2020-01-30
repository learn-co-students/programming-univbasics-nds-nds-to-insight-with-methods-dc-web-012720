$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  film_number = 0 
  total_gross = 0 
  while film_number < director_data[:movies].length do
    total_gross += director_data[:movies][film_number][:worldwide_gross] 
    film_number += 1 
  end 
 total_gross
end 

def directors_totals(nds)
  result = {}
  director_number = 0 
  while director_number < nds.length do 
    total_gross = 0 
    current_director = nds[director_number]
    director_name = nds[director_number][:name]
    result[director_name] = gross_for_director(current_director)
    director_number += 1 
  end 
  result
end