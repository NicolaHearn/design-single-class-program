class MusicList
  def initialize
    @list = []  
  end

  def add(track)
    raise "Track must have a name" if track.empty?
    @list.push(track)
  end

  def print_list
    raise "Empty list, please add a track" if @list.empty?
    "#{@list.join('/n')}"
  end
end