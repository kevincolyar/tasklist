Tasklist
========

Description
-----------
Tasklist is a ruby DSL for creating tasklists


Examples
--------
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

Output
------
    2010 September
    --------------------------------------------------------------------------------
    2010-09-02:
     - "Create tasklist DSL" 09:15:56 -  admin,done
     - "Push tasklist to github" 09:34:00 - 09:38:04 github
    2010-09-03:
     - "Take out garbage"  -  
     - "Wash car"  -  
Tips
---
It is very useful if you have macros setup for dates and times

~/.vimrc
    iabbrev <buffer> ddate <C-R>=strftime("%Y-%m-%d")<CR>
    iabbrev <buffer> ttime <C-R>=strftime("%H:%M:%S")<CR>
