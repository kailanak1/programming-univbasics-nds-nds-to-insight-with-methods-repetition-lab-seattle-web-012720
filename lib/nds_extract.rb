$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  array = [] 
  i = 0 
  while i < source.length do
    array << source[i][:name]
    i += 1 
  end 
 array 
end

def total_gross(source)
  i = 0 
  total = 0 
  while i < soure.length do 
    total += gross_for_director(list_of_directors, source)
    print hi 
    i += 1 
  end 
  print total 
end


