# Music List Challenge Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicList
  def initialize
    @list = []
  end

  def add(track) # track is a string
    # No return value
    # pushes the track to @list
  end

  def print_list
    # prints list of tracks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
list = MusicList.new
list.is_a? MusicList => true 

# 2
list.add("track1")
list.print_list => "track1"

# 3
list.add("track1")
list.add("track2")
list.print_list => "track1/ntrack2

# 4
list.add("") => raise error "Track must have a name"

# 5
list = MusicList.new
list.print_list => raise error "Empty list, please add a track"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

