require 'pry'
katz_deli = []
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else 
    new_line = katz_deli.collect.with_index {|name, position| "#{position + 1}. #{name}" }
    # last = new_line.pop.strip
    # new_line << last
    puts "The line is currently: #{new_line.join(' ')}"
  end  
end

# Add a new person to the line 
# Welcome that new person and show them their positon on the line

def take_a_number(katz_deli, person)
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.size} in line."
end  

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    customer = katz_deli.shift
    puts "Currently serving #{customer}."
  end
end  