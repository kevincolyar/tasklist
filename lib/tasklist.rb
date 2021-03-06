require 'date'

class TaskList
  @groups = {}
  
  class << self
    attr_accessor :date, :groups
  end

  def self.output
    @groups.keys.each do |key|
      puts "#{key}:"
      @groups[key].each do |task|
        puts " - #{task}"
      end
    end
  end

end

module Kernel
  def during(period, &block)
    block.call
    puts period
    puts '-' * 80
    TaskList.output
  end

  def on(date, &block)
    TaskList.date = Date.parse(date)
    block.call
  end

  def task(*args)
    task = Task.new(TaskList.date, args[0], args[1], args[2], args[3..-1] || [])
    TaskList.groups[TaskList.date] ||= []
    TaskList.groups[TaskList.date] << task
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
    "\"#{@name}\" #{@start_time} - #{@end_time} #{@tags.join(',')}"
  end
end
