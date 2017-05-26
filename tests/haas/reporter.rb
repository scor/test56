#! /usr/bin/env ruby

require 'json'

filename = ARGV[0]
json = File.read(filename)
data = JSON.parse(json)

highs = []

data['issues'].each do |i|
    if i['severity'] == 'high'
        highs.push(i)
    end
end

if highs.count == 0
puts 'No high severity issues detected' + "\n"
exit 0
end

puts "Number of high issues found: " + (highs.count).to_s + "\n"
puts "============================= \n\n"

highs.each do |hs|
    puts hs['name'] + ": " + hs['vector']['url'] + "\n"
end

exit 1