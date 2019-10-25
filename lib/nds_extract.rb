$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # [
  #  {:name => "string", :movies => [
  #    {:title, :studio, :worldwide_gross, :release year},{},{}]}
  #  {:,: => [{::::},{::::}{::::}]} 
  hash = {}
  out_index = 0
  while out_index < directors_database.length do
    total = 0
    in_index = 0
    while in_index < directors_database[out_index][:movies].length do
      total += directors_database[out_index][:movies][in_index][:worldwide_gross]
      in_index += 1
    end
    hash << directors_database[out_index][:name] => total
    out_index += 1
  end
end
