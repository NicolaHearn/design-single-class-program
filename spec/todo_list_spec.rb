require 'todo'

describe ToDoList do
  it "constructs" do
    my_list = ToDoList.new
    expect(my_list).to be_a ToDoList
  end
  context "Once something has been added to the list" do
    it "can display one list item" do
      my_list = ToDoList.new
      my_list.add('walk the dog')
      expect(my_list.print_tasks).to eq 'walk the dog'
    end
  end
end