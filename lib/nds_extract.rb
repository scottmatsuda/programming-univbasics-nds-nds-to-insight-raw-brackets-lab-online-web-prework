require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# nds is an array of hash of array of hash

def directors_totals(nds)
  
  directors_totals = {}
  
  row_index = 0
  
  
  # iterate through the nds array and assign the current director key in 
  # our return hash the value of the name of the current director
  
  while row_index < nds.length do
    current_director = nds[row_index][:name]
    col_index = 0
    
    # Iterate through the nested movies array and add up the worldwide gross for each director
    director_gross = 0
    while col_index < nds[row_index][:movies].length do 
      director_gross += nds[row_index][:movies][col_index][:worldwide_gross]
      col_index += 1
    end
    
    # make my return hash directors_totals to have the current director as a key and director_gross as its value
    directors_totals[current_director] = director_gross
    row_index += 1
  end
  directors_totals
<<<<<<< HEAD
end
=======
end
>>>>>>> ec7e59e1d70b2de4b1c27338f98987ecf5c0436f
