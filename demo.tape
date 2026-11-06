# Day 3 demo: the 3 areas of Git
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

Type "git init -b main areas-demo && cd areas-demo"
Enter
Sleep 1500ms

Type "# 1. Two new files on the DESK"
Enter
Type 'echo "Milk, eggs" > shopping.txt'
Enter
Type 'echo "Project ideas" > notes.txt'
Enter
Type "git status"
Enter
Sleep 3s

Type "clear"
Enter
Type "# 2. Move ONE file to the PACKING TABLE"
Enter
Type "git add shopping.txt"
Enter
Type "git status"
Enter
Sleep 3500ms

Type "clear"
Enter
Type "# 3. Seal it into the CUPBOARD"
Enter
Type 'git commit -m "Add shopping list"'
Enter
Type "git status"
Enter
Sleep 4s
