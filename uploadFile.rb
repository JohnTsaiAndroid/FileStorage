#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

t = Time.now
time = t.strftime("%Y-%m-%d %H:%M")
commit_msg = "\"add file with ruby script in #{time}\""

puts commit_msg

system('git status')
system('git add .')
system("git commit -am #{commit_msg}")
system('git push')

puts 'upload image with git!'

