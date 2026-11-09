# 🏋️ Day 6 Exercise: Play Spot the Difference

**Time:** about 15 minutes  |  **Goal:** read diffs confidently and know which `git diff` to use.

## Part 1: predict, then check

Make a repo and one saved file:

```bash
git init -b main diff-lab
cd diff-lab
printf "Red\nGreen\nBlue\n" > colors.txt
git add colors.txt
git commit -m "Add colors list"
```

Now change the file:

```bash
printf "Red\nYellow\nBlue\nPurple\n" > colors.txt
```

**Before you run anything**, write down your guess:

1. Which line will start with `-`? 
2. Which lines will start with `+`?
3. Which line stays unchanged context?

Then run `git diff` and check your guesses.

## Part 2: which command shows what?

Fill in the table by predicting, then running each command.

| Step | Command | What do you expect to see? |
|------|---------|----------------------------|
| 1 | `git diff` | |
| 2 | `git add colors.txt`, then `git diff` | |
| 3 | `git diff --staged` | |
| 4 | `git commit -m "Update colors"`, then `git diff` | |
| 5 | `git diff HEAD~1 HEAD` | |
| 6 | `git diff --stat HEAD~1 HEAD` | |

## ✅ Checklist

- [ ] I predicted the diff before running it
- [ ] I can point to the removed and added lines
- [ ] I know why `git diff` is empty after `git add`
- [ ] I used `git diff --staged` before committing
- [ ] I compared two commits with `HEAD~1 HEAD`

## ⭐ Bonus quests

- **Word view:** run `git diff --word-diff` after changing one word in a line.
- **New file trap:** create `new.txt` and run `git diff`. Why is it missing? Then run `git add new.txt` and `git diff --staged`.
- **Post your progress:** share a screenshot of a colorful diff with the tag `#GitQuest`.

## 🧠 Quick quiz

1. Which command shows changes you have already staged?
2. What does a line starting with `-` mean?
3. Why does `git diff` show nothing right after `git add`?

<details>
<summary>👀 Click to see the answers</summary>

**Part 1**
1. `-Green`
2. `+Yellow` and `+Purple`
3. `Red` and `Blue`

**Quiz**
1. `git diff --staged`
2. That line was removed.
3. The changes moved to the staging area, so there is no difference between the desk and the packing table.

</details>

<details>
<summary>🆘 Stuck? Click for the full solution</summary>

```bash
git diff
git add colors.txt
git diff            # empty
git diff --staged   # same changes as before
git commit -m "Update colors"
git diff            # empty
git diff HEAD~1 HEAD
git diff --stat HEAD~1 HEAD
```

</details>

---

⬅️ [Back to the Day 6 lesson](./lesson.md)
