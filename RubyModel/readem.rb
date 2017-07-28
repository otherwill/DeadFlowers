# doing it object style
require_relative 'deadlib'

# so old school, define files & initialize ...
name_listin = "./73\ copy.txt"
#name_dataout = "./testout.csv"
#name_metaout = ".//metaout.csv"

# naming them here prevents them from being local to block
linenum = 0
shows = []
thisShow = nil 

# open our files
listin = File.new(name_listin,"r")
#dataout = File.new(name_dataout,"wt")
#metaout = File.new(name_metaout,"wt")

listin.each_line {|line|
  #puts "Got #{line.dump}" }
  linenum += 1
  puts linenum.to_s

  #classify line
  case line
  when /\d/
    #  store previous show before setting up new one, unless first in file
    puts "line #{linenum.to_s} show #{line}"
    if linenum != 1 then
        shows << thisShow
    end
    thisShow = DeadShow.new(line, name_listin, linenum)

  when /[a-zA-Z]/
    #puts "got song", line.dump
    thisShow.addSong(line,name_listin,linenum)

  end


} #end line iterator block


#what do we have here?
p shows

# close files - just common courtesy
listin.close
#dataout.close
#metaout.close

puts "Well, that is that"
