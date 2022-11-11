class ToDoList
  def initialize
    @list = []
  end

  def add(todo)
    raise "You can't add a task without text" if todo.empty?
    @list.push(todo)
  end

  def print_tasks
    raise "No tasks, add a task before trying to print." if @list.empty?
    return "#{@list.join(',/n')}"
  end

  def completed_task(todo)
    raise "This task is not on your list" unless @list.include?(todo) == true
    @list.delete(todo)
  end
end