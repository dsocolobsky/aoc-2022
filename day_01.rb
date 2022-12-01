input = File.read('input.txt')

elves = input.split("\n\n")
elves = elves.map{|x| x.split("\n")}
elves = elves.map{|l| l.map{|x| Integer(x)}}
elves = elves.map{|l| l.sum}

puts elves.max

top_three = elves.sort_by{|x| -x}.slice(0, 3).sum
puts top_three
