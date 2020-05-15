# enable tui by default
tui enable
# focus the command window by default
fs n

#enable to scroll output with tui enabled (very inelegant) - https://stackoverflow.com/questions/9257085/how-can-i-scroll-back-in-gdbs-command-window-in-the-tui-mode
set trace-commands on
set logging on

# reduces tui cruft ('glitchy tui window that goes after refresh') - https://stackoverflow.com/questions/38803783/how-to-automatically-refresh-gdb-in-tui-mode
define c 
  continue
  refresh
end
define n
  next
  refresh
end
define r
  run 
  refresh
end
