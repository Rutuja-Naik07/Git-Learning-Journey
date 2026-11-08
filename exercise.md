# 🏋️ Day 5 Exercise: Go Time-Travelling

**Time:** about 15 minutes  |  **Goal:** build a small history, then explore it with `git log`.

## Part 1: build the history

1. Create a repo: `git init -b main time-machine` and go inside it.
2. Make **4 commits**, each with a clear message (remember Day 4!):
   - Create `diary.txt` with one line, then commit.
   - Add a second line to `diary.txt`, then commit.
   - Add a third line to `diary.txt`, then commit.
   - Create `plans.txt` with one line, then commit.

## Part 2: travel through time

Run each command and answer the question next to it.

| Command | Question |
|---------|----------|
| `git log` | What is the 7-character ID of your newest commit? |
| `git log --oneline` | Which commit does `HEAD` point to? |
| `git log --oneline -n 2` | How many lines did you get? |
| `git log --stat` | Which commit touched `plans.txt`? |
| `git log --oneline --grep="diary"` | How many commits mention "diary"? |
| `git show <hash>` | What does the `+` line show? (use the hash of your 3rd commit) |

## ✅ Checklist

- [ ] I made 4 commits with clear messages
- [ ] I can find `HEAD` in the log output
- [ ] I used `--oneline`, `-n` and `--stat`
- [ ] I opened a commit with `git show`
- [ ] I left the log screen with `q` when it opened

## ⭐ Bonus quests

- **Create a shortcut:** run `git config --global alias.lg "log --oneline --graph --decorate"` and then type `git lg`.
- **Find by author:** try `git log --oneline --author="Your Name"`.
- **Post your progress:** share your `git log --oneline` with the tag `#GitQuest`.

## 🧠 Quick quiz

1. Which command shows history with one line per commit?
2. What does `HEAD` mean?
3. How do you leave the log screen when it opens?

<details>
<summary>👀 Click to see the answers</summary>

1. `git log --oneline`
2. It is the commit you are currently on: the "you are here" pin.
3. Press `q`.

</details>

<details>
<summary>🆘 Stuck? Click for the full solution</summary>

```bash
git init -b main time-machine
cd time-machine
echo "Went to the market" > diary.txt
git add diary.txt
git commit -m "Add first diary entry"
echo "Learned Git today" >> diary.txt
git add diary.txt
git commit -m "Add second diary entry"
echo "Baked a cake" >> diary.txt
git add diary.txt
git commit -m "Add third diary entry"
echo "Planning a trip" > plans.txt
git add plans.txt
git commit -m "Add travel plans"

git log
git log --oneline
git log --oneline -n 2
git log --stat
git log --oneline --grep="diary"
git show HEAD~1
```

</details>

---

⬅️ [Back to the Day 5 lesson](./lesson.md)
