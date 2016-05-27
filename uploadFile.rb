#!/usr/bin/ruby
# -*- coding: UTF-8 -*-


system('git status')
system('git add .')
system('git commit -am "add image with ruby script"')
system('git push')

puts 'upload image with git!'

