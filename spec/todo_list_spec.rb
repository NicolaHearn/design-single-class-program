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
    it "raises error with message if todo is empty string" do
      my_list = ToDoList.new
      expect { my_list.add('') }.to raise_error "You can't add a task without text"
    end
    it "raises error if nothing has been added to the todo list" do
      my_list = ToDoList.new
      expect { my_list.print_tasks }.to raise_error "No tasks, add a task before trying to print."
    end
  end
  context "Once more than one thing has been added to the list" do
    it "can display more than one item" do
      my_list = ToDoList.new
      my_list.add('walk the dog')
      my_list.add("Feed the cat")
      expect(my_list.print_tasks).to eq 'walk the dog,/nFeed the cat'
    end
  end
  context "when a task is completed" do
    it "removes it from the list" do
      my_list = ToDoList.new
      my_list.add('walk the dog')
      my_list.add("Feed the cat")
      my_list.completed_task("Feed the cat")
      expect(my_list.print_tasks).to eq 'walk the dog'
    end
    it "raises an error is the task is not currently on the list" do
      my_list = ToDoList.new
      my_list.add("walk the dog")
      expect { my_list.completed_task("Buy a car") }.to raise_error "This task is not on your list"
    end
  end
end