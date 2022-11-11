require 'todo'

describe ToDoList do
  it "constructs" do
    my_list = ToDoList.new
    expect(my_list.is_a?(ToDoList)).to eq true
  end
end