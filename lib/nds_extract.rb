$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 movie_count = 0
 total_gross = 0
  while movie_count < director_data[:movies].length do
    total_gross += director_data[:movies][movie_count][:worldwide_gross]
    movie_count += 1
  end
  total_gross
end

def directors_totals(nds)
  directors_index = 0
  result = {}

    while directors_index < nds.length do
      #binding.pry
      director = nds[directors_index]
      result[director[:name]] = gross_for_director(director)
      directors_index += 1
    end
    result
  end
