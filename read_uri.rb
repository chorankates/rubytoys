#!/usr/bin/env ruby
# read_uri -- downloads ARGV[0] or github.com and prints first sentence found

require 'open-uri'

url = (ARGV[0]) ? ARGV[0] : 'http://www.microsoft.com'

open(url) { 
	|page| page_content = page.read()

	links = page_content.scan(/[A-Z]{1}[\w\d\s]*?\./).flatten # ok, not the best regex

	if (links.size > 0) 
		links.each { |link| p link } # i like this syntax, but how can i easily add a count?
	else
		p "couldn't match anything"
	end

}

exit
