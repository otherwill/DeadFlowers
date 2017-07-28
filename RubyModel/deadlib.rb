
class DeadSong
  def initialize(rawsong, filenm, lineno)
    @song = rawsong
    @src_file = filenm
    @src_line = lineno
  end
end


class DeadShow
  def initialize(rawshow, filenm, lineno)
    #Use regex to parse. For date, use date or string?
    @date = "10/21/1960"
    @venue = rawshow
    @city = "New York, NY"
    @src_file = filenm
    @src_line = lineno
    @songs = []
  end
  def addSong(rawsong,fn,ln)
    @songs << DeadSong.new(rawsong,fn,ln)
  end
end
