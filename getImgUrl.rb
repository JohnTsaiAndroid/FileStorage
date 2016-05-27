#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$URL_PREFIX = "https://raw.githubusercontent.com/JohnTsaiAndroid/FileStorage/master/image/"
$IMG_SUFFIX_ARRAY = ['.png','.jpg','.gif']

current_dir = Dir.pwd
img_dir = current_dir.to_s+"/image"

dir = Dir::entries(img_dir.to_s)
dir.each do |f|
	if(f.to_s !~/^[.]/)
	  puts f.to_s
	  extname = File.extname(f)
	  if($IMG_SUFFIX_ARRAY.include?(extname))
	    puts "![]("+$URL_PREFIX+f.to_s+")"
	  else
	  	puts $URL_PREFIX+f.to_s
	  end
	  puts
	end
end
