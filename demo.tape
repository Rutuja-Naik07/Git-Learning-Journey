# Day 4 demo: git add and good commit messages
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

Type "git init -b main commit-lab && cd commit-lab"
Enter
Sleep 1s

Type 'echo "Pasta" > menu.txt; echo "Ideas" > notes.txt; echo "Call mom" > todo.txt'
Enter
Sleep 1s

Type "# 1. Add ONE file, label it clearly"
Enter
Type "git add menu.txt"
Enter
Type 'git commit -m "Add menu"'
Enter
Sleep 2s

Type "clear"
Enter
Type "# 2. Two files that belong together"
Enter
Type "git add notes.txt todo.txt"
Enter
Type 'git commit -m "Add notes and todo files"'
Enter
Sleep 2s

Type "clear"
Enter
Type "# 3. Read the story of your project"
Enter
Type "git log --oneline"
Enter
Sleep 4s
