# Day 5 demo: git log, your time machine
# Install VHS: https://github.com/charmbracelet/vhs
# Run:  vhs demo.tape   (creates demo.gif)

Output demo.gif

Set Shell "bash"
Set FontSize 20
Set Width 1000
Set Height 600
Set Padding 24
Set Theme "Dracula"
Set TypingSpeed 50ms

# --- hidden setup: build a small history ---
Hide
Type "git init -q -b main time-machine && cd time-machine && clear"
Enter
Type 'for i in 1 2 3; do echo "Entry $i" >> diary.txt; git add diary.txt; git commit -q -m "Add diary entry $i"; done; clear'
Enter
Show

Type "# Zoom 1: everything"
Enter
Type "git log"
Enter
Sleep 4s

Type "clear"
Enter
Type "# Zoom 2: one line each"
Enter
Type "git log --oneline"
Enter
Sleep 3s

Type "# Zoom 3: which files changed?"
Enter
Type "git log --stat -2"
Enter
Sleep 4s

Type "clear"
Enter
Type "# Open one commit"
Enter
Type "git show HEAD"
Enter
Sleep 5s
