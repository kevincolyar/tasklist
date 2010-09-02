module Kernel
  def on(date, &block)
    puts date
    block.call
  end

  def task(*args)
    task = Task.new(args[0], args[1], args[2], args[3..-1] || [])
    puts task
  end

end

class Task
  attr_accessor :name, :start_time, :end_end, :tags

  def initialize(name, start_time, end_time, *tags)
    @name = name
    @start_time = start_time
    @end_time = end_time
    @tags = tags
  end

  def to_s
    "Task #{@name} #{@start_time} #{@end_time} #{@tags.join(',')}"
  end
end
