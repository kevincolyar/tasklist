require 'date'

class TaskList
  @dates = []
  
  class << self
    attr_accessor :dates
  end
end

module Kernel
  def on(date, &block)
    TaskList.dates << Date.parse(date)
    block.call
    TaskList.dates.pop
  end

  def task(*args)
    task = Task.new(TaskList.dates.last, args[0], args[1], args[2], args[3..-1] || [])
    puts task
  end

end

class Task
  attr_accessor :date, :name, :start_time, :end_end, :tags

  def initialize(date, name, start_time, end_time, *tags)
    @date = date
    @name = name
    @start_time = start_time
    @end_time = end_time
    @tags = tags
  end

  def to_s
    "#{@date} #{@name} #{@start_time} #{@end_time} #{@tags.join(',')}"
  end
end
