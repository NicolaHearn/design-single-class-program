require 'music_list_challenge'

describe MusicList do
  context "when constructed" do
    it "creates an instance of music list" do
      list = MusicList.new
      expect(list).to be_a MusicList
    end
  end
  context "adding a track to a list" do
    it "pushes the track to the list array" do
      list = MusicList.new
      list.add("track1")
      expect(list.print_list).to eq "track1"
    end
    it "raises error if no track is specified" do
      list = MusicList.new
      expect { list.add('') }.to raise_error "Track must have a name"
    end
  end
  context "where adding new tracks to an existing list" do
    it "pushes new tracks to the list array" do
      list = MusicList.new
      list.add("track1")
      list.add("track2")
      expect(list.print_list).to eq "track1/ntrack2"
    end
  end
  context "when printing a list" do
    it "raises an error if the list is empty" do
      list = MusicList.new
      expect { list.print_list }.to raise_error "Empty list, please add a track"
    end
  end
end