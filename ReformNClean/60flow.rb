# reformatting a file!

# naming them here prevents them from being local to block
set1 = []
show_line = ""

# for translating abbreviations.
expand = [
[/11/              ,"The Eleven"],
[/AWBYGN/          ,"And We Bid You Good night"],
[/Around/          ,"Around and Around"],
[/Attics/          ,"Attics of My Life"],
[/BE Women/        ,"Brown Eyed Women"],
[/BIODTL/          ,"Beat It On Down The Line"],
[/Baby Blue/       ,"It's All Over Now, Baby Blue"],
[/Big RR/          ,"Big Railroad Blues"],
[/Bobby McGee/     ,"Me and Bobby McGee"],
[/Brokedown/       ,"Brokedown Palace"],
[/Caution/         ,"Caution (Do Not Stop on Tracks)"],
[/China/           ,"Chinacat Sunflower"],
[/Cold Rain/       ,"Cold Rain and Snow"],
[/Cryptical/       ,"Cryptical Envelopment"],
[/Cumberland/      ,"Cumberland Blues"],
[/Dancin'/         ,"Dancin' in the Street"],
[/Death Don't/     ,"Death Don't Have No Mercy"],
[/Deep Elem/       ,"Deep Elem Blues"],
[/Dew/             ,"Morning Dew"],
[/Don't Ease/      ,"Don't Ease Me In"],
[/Dupree's/        ,"Dupree's Diamond Blues"],
[/FOTD/            ,"Friend of the Devil"],
[/Friend of Mine/  ,"He Was a Friend of Mine"],
[/GDTRFB/          ,"Goin' Down The Road Feelin' Bad"],
[/Golden Road/     ,"The Golden Road to Unlimited Devotion"],
[/Greatest/        ,"Greatest Story Ever Told"],
[/Lovelight/       ,"Turn On Your Lovelight"],
[/Mexicali/        ,"Mexicali Blues"],
[/Minglewood/      ,"Minglewood Blues"],
[/NFA/             ,"Not Fade Away"],
[/New Potato/      ,"New Potato Caboose"],
[/New Speedway/    ,"New Speedway Boogie"],
[/Other 1/         ,"The Other One"],
[/Playin'/         ,"Playin' in the Band"],
[/Promised/        ,"Promised Land"],
[/Ramble/          ,"Ramble On Rose"],
[/Rider/           ,"I Know You Rider"],
[/Run Rudolph/     ,"Run, Run Rudolph"],
[/Sat Night/       ,"One More Saturday Night"],
[/Schoolgirl/      ,"Good Morning, Little Schoolgirl"],
[/Smokestack/      ,"Smokestack Lightning"],
[/Stephen/         ,"St. Stephen"],
[/Sugar Mag/       ,"Sugar Magnolia"],
[/Tenn Jed/        ,"Tennessee Jed"],
[/UJB/             ,"Uncle John's Band"]
]
# open source file
listin =  File.new("./65-71_cleaned.txt","r")
listout = File.new("./65-71_cleaned_good.txt","w")

#global line counter
line_no = 0;

listin.each_line do |line|
  line_no += 1

  case line.chomp!

  when /(\d{1,2}[\/]\d{1,2}[\/]\d{1,2})/   # date indicates show line
    listout.puts(" ") if line_no != 1
    listout.puts(line)

  else  # let's assume it is a bunch of songs
    # if we see the set or encore indicator write a blank line
    listout.puts(" ") if line =~ /^[12E]:/
    # now get rid of text marking beginning of set
    line.gsub!(/^[12E]:/," ")
    #make "intos",: to commas
    line.gsub!(/->/, ",")
    # split on commas
    psongs = line.split(",")
    #run 'em out
    psongs.each do |song|
      really_a_song = song.strip
      expand.each do |ex|
        really_a_song = really_a_song.gsub(ex[0], ex[1])
      end
      listout.puts(really_a_song)
    end
  end
# could it be that simple?
end
listin.close
listout.close
