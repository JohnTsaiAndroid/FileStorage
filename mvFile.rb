#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require 'fileutils'

img_Array = Array.new
$DEST_DIR = Dir.pwd+"/image"
$IMG_SUFFIX_ARRAY = ['.jpg','.png','.gif']


puts $DEST_DIR

puts 'moving file start!'

if ARGV.length >0
	ARGV.each do |i|
		img_Array.push(i.to_s)
		puts i.to_s
	end
end

i = 0
img_Array.each do |f|
	FileUtils.cp(f,$DEST_DIR)
    extname = File.extname(f)
    puts extname
    if($IMG_SUFFIX_ARRAY.include?(extname.to_s))
	   File.rename($DEST_DIR+"/"+File.basename(f),$DEST_DIR+"/"+Time.now.to_i.to_s+i.to_s+extname)
	   i=i+1
	end
end

puts 'moving file finish!'