Tasklist
========

Description
-----------
Tasklist is a ruby DSL for creating tasklists


Examples
--------
    on '2010-09-02' do 
      task 'Create tasklist DSL', '09:15:56', '', 'admin'
    end

Tips
---
Useful if you have macros setup for dates and times

Vim - ~/.vimrc
--------------
    iabbrev <buffer> ddate <C-R>=strftime("%Y-%m-%d")<CR>
    iabbrev <buffer> ttime <C-R>=strftime("%H:%M:%S")<CR>
