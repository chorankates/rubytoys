#!/usr/bin/envy ruby
## readwrite_file.rb

filename = (ARGV[0]) ? ARGV[0] : '/tmp/foo.bar'

p "using file: " + filename

# actually open the file, need to think about exception handling later
fh = File.open(filename, 'a+') # a+ lets us read and write

# does the file have any contents? if so, print them out
if (fh.size > 0)
  p "current contents: "
  fh.each { |line| p "  #{fh.lineno}\t#{line}"} # rubyish for loop
  
  p "-" * 20; # not x
end

# add some string
fh.puts "---\nthis is a test\n"

fh.close # looks naked without parens or an argument

# then print it out again
new_fh = File.open(filename, 'r')

if (new_fh.size > 0)
  p "new contents: "
  new_fh.each { |l| p "  #{new_fh.lineno}\t#{l}"}
end

exit
