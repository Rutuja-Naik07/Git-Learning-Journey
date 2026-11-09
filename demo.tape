# Day 6 demo: git diff, spot the difference
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

# --- hidden setup: one saved recipe ---
Hide
Type "git init -q -b main spot-diff && cd spot-diff"
Enter
Type 'printf "Pasta\nTomato sauce\nBasil\n" > recipe.txt && git add recipe.txt && git commit -q -m "Add recipe" && clear'
Enter
Show

Type "# 1. Change the file on the desk"
Enter
Type 'printf "Pasta\nPesto sauce\nBasil\nCheese\n" > recipe.txt'
Enter
Type "git diff"
Enter
Sleep 5s

Type "clear"
Enter
Type "# 2. Pack it. Now git diff is empty..."
Enter
Type "git add recipe.txt"
Enter
Type "git diff"
Enter
Sleep 2s
Type "# ...because the change is on the packing table"
Enter
Type "git diff --staged"
Enter
Sleep 5s
