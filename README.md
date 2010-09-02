Tasklist
========

Description
-----------
Tasklist is a ruby DSL for creating tasklists


Examples
--------
    on '2010-09-02' do 
      task 'Create tasklist DSL', '09:15:56', '', 'admin', 'done'
      task 'Push tasklist to github', '09:34:00', '09:38:04', 'github'
    end

Tips
---
It is very rseful if you have macros setup for dates and times

~/.vimrc
    iabbrev <buffer> ddate <C-R>=strftime("%Y-%m-%d")<CR>
    iabbrev <buffer> ttime <C-R>=strftime("%H:%M:%S")<CR>
