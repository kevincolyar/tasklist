#!/usr/bin/env ruby
require 'tasklist'

during '2010 September' do 
  on '2010-09-03' do 
    task 'Take out garbage'
    task 'Wash car'
  end

  on '2010-09-02' do 
    task 'Create tasklist DSL', '09:15:56', '', 'admin', 'done'
    task 'Push tasklist to github', '09:34:00', '09:38:04', 'github'
  end
end
