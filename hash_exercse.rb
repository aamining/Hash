# key= [1,22,27,121,256]
# hash={}
#
# key.each do |num|
#   value = num % 11
# if value == 0
#   value = "collision!"
# end
#  hash[num] = value
# end
#
# puts hash

# define our custom hash function
# def h(v)
# 	v % 11
# end
#
# # create a hash to place our values into
# t = {}
#
# # track whether we have a collision
# collision_count = 0
#
# # iterate through our test values
# [1, 3, 22, 27, 121, 256].each do |v|
# 	if !t[h(v)].nil?
# 		collision_count += 1
# 		puts "collision!"
# 	end
# 	t[h(v)] = v
# 	puts "#{h(v)} => #{v}"
# end
#
# puts t.inspect
# puts "collision_count: #{collision_count}"


# ***********************************************************************
# Mat [11:12 AM]
# Exercises:
# -----------
#
# E1. Given the following hash, write a program that outputs the jobs located in Ultimo.
# ```job_locations = {
#     ultimo: ["Front End", "Dev Ops", "Full stack"],
#     surry_hills: ["Desginer", "Back End"],
#     brisbane: ["Full stack", "Front End"],
#     melbourne: ["Front End","Full stack","Back End"]
# }
# ```
# Example output:
# ```["Front End", "Dev Ops", "Full stack"]
# ```
#
# E2. Write a program the outputs each of the `job_locations` in key-value arrangement.
# Use the `each_key` and `each_value` to iterate through the keys and values separately.
# Then, output both in "#{key} => #{value}" format.
#
# Example output:
# ```Keys:
# ultimo
# surry_hills
# brisbane
# melbourne
#
# Values:
# Front End
# Dev Ops
# Full stack
# Desginer
# Back End
# #...
#
# Key => Value
# ultimo => ["Front End", "Dev Ops", "Full stack"]
# surry_hills => ["Desginer", "Back End"]
# brisbane => ["Full stack", "Front End"]
# melbourne => ["Front End", "Full stack", "Back End"]
# ```
#
#
# E3. Write a program that uses the `select` method on the `job_locations` hash to output only the jobs in the Sydney area.
#
# Example output:
# ```{:ultimo=>["Front End", "Dev Ops", "Full stack"], :surry_hills=>["Desginer", "Back End"]}
# # more correct: take values only and flatten
# ["Front End", "Dev Ops", "Full stack", "Desginer", "Back End"]
#
# ```
#
#
#
# E4. Write a program that illustrates the difference between `merge` and `merge!` on ruby hashes.
#
# eg. sample data (feel free to use your own hashes instead)
# ```options = {width: "10em"}
# extra_options = {height: "11em"}
# ```
#
#
# Example output:
# ```options.merge(extra_options): {:width=>"10em", :height=>"11em"}
# options: {:width=>"10em"}
# extra_options: {:height=>"11em"}
# options after merge!(extra_options) :
# {:width=>"10em", :height=>"11em"}```

job_locations = {
    ultimo: ["Front End", "Dev Ops", "Full stack"],
    surry_hills: ["Desginer", "Back End"],
    brisbane: ["Full stack", "Front End"],
    melbourne: ["Front End","Full stack","Back End"]
}

#Answer 1:
# puts job_locations[:ultimo]
# the followoing one reffer to certain position of avalue
# puts job_locations[:ultimo][0]

# # Answer 2:
#
# puts "keys:"
# job_locations.each_key {|k| puts k}
# puts "values"
# job_locations.each_value {|v| puts v}
# puts "key => value"
# job_locations.each {|k,v| puts  "#{k} => #{v}"}

#Answer 3
# a=[]
# job_locations.each_value do |value|
# a<<value
# end
# puts a
