# reformatting a file!

# naming them here prevents them from being local to block
set1 = []
set2 = []
show_line = ""

# for translating dates in month.
mlook = [
  ["January", '1'],
  ["February", '2'],
  ["March", '3'],
  ["April", '4'],
  ["May", '5'],
  ["June", '6'],
  ["July", '7'],
  ["August", '8'],
  ["September", '9'],
  ["October", '10'],
  ["November", '11'],
  ["December", '12']
]

# open source file
listin =  File.new("./90.2col.edit.txt","r")
listout = File.new("./90_one_col.txt","w")

#global line counter
line_no = 0;

findasong = Regexp.new("^\\w[ .\\-,'\\w]*")

listin.each_line { |line|
  line_no += 1
  # sets have more than one space between 'em.  kind of crude pattern but this gets it
  #make "intos",: to spaces
  line.gsub!(/->/, "  ")
  parts = line.chomp.split(/  /)
  puts "#{line_no.to_s}: #{line.length.to_s}/#{parts.length}: #{line[0..40]}" if line_no <= 50
  puts "<more>" if line_no == 51
  #puts parts.length

  if parts.length >= 2
    # second method in brackets filters out everything not song name. i.e.->
    # and '--encore--'.  Question, what if we have an odd number of spaces
    # and our song string starts with a " "?  hence the .strip
    set1 << parts[0].strip[findasong]
    set2 << parts[-1].strip[findasong]
  end
  # got a header line ... kinda crude.
  if parts.length == 1
    # write the saved show line
    listout.puts(show_line.strip) if line_no != 1
    # save the one we just got
    show_line = line
    # change the date formate in the show line
    # Would it be more efficient to build the regex and strings one and then loop?
    #this line worked.
    #show_line = show_line.gsub(/.*(January* )(\d+).*19(\d\d).*-(.*)/, '1/\2/\3 \4')
    mlook.each { |m|
      match_regexp = Regexp.new(".*(" + m[0] + "* )(\\d+).*19(\\d\\d).*-(.*)")
      subst_string = m[1] + '/\2/\3 \4'
      show_line = show_line.gsub(match_regexp, subst_string)
    }
    # now if we have some show songs to write, do it.
    if set1.length != 0# dump lists
      set1.each { |song|
        listout.puts(song)
      }
      set2.each { |song|
        listout.puts(song)
      }
      #blank line before next show
      listout.puts("")
      #empty 'em
      set1 = []
      set2 = []
    end # writing songs
  end
}
listin.close
listout.close
