#!/bin/env ruby
logfile = File.open('log/mirror.log')

file_list = []

logfile.each do |line|
  if line =~ /file: (\/.*\.rpm)/
    file_list << $1.chomp
  end
end

file_list = file_list.uniq!.keep_if do |file|
  File.exists?(file)
  puts file
  puts File.exists?(file)
end

puts "#{file_list.join(' ')}"
