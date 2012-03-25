#!/usr/env/bin ruby

## print all of the files in a directory matching an optional regular expression

dir     = (ARGV[0]) ? ARGV[0] : Dir.pwd 
regex   = (ARGV[1]) ? ARGV[1] : '.*'

p "dir:   " + dir
p "regex: " + regex

entries = Dir.entries(dir).each

for node in entries
  #next   if node.match(/^(?:\.|\.\.)$/)
  next   if File.directory?(node) # skip dirs
  p node if node.match(regex)     # match files
end

exit
