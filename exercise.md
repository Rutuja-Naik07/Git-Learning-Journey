# 🏋️ Day 3 Exercise: Desk, Table, Cupboard

**Time:** about 10 minutes  |  **Goal:** move files between the 3 areas and explain where each one is.

## The challenge

Use your `my-first-repo` (or make a new one with `git init -b main`).

1. Create two files: `todo.txt` and `ideas.txt`, each with one line of text.
2. Run `git status`. Where are both files? *(Answer in your own words: desk, packing table, or cupboard?)*
3. Stage only `todo.txt` with `git add todo.txt`.
4. Run `git status` again. Which file is green and which is red?
5. Commit with the message `Add todo list`.
6. Run `git status` one more time. What is left on the desk?
7. Now stage and commit `ideas.txt` with the message `Add ideas list`.
8. Run `git log --oneline`. You should see **two** new commits, one per file.

## ✅ Checklist

- [ ] I saw both files listed as untracked
- [ ] I staged only one file
- [ ] My first commit contained only `todo.txt`
- [ ] My second commit contained only `ideas.txt`
- [ ] `git status` says "nothing to commit, working tree clean" at the end

## ⭐ Bonus quests

- **Undo a mistake:** edit `todo.txt`, run `git add todo.txt`, then run `git restore --staged todo.txt`. Run `git status`. Where did the file go?
- **Pack everything:** make changes to both files and use `git add .` to stage them together. What does `git status` say?
- **Post your progress:** share your `git log --oneline` with the tag `#GitQuest`.

## 🧠 Quick quiz

1. Which command moves a file from the working directory to the staging area?
2. What does "Changes to be committed" mean?
3. Where do commits live?

<details>
<summary>👀 Click to see the answers</summary>

1. `git add`
2. The file is staged (on the packing table) and will go into the next commit.
3. In the repository, the hidden `.git` folder.

</details>

<details>
<summary>🆘 Stuck? Click for the full solution</summary>

```bash
echo "Buy milk" > todo.txt
echo "Learn Git" > ideas.txt
git status
git add todo.txt
git status
git commit -m "Add todo list"
git status
git add ideas.txt
git commit -m "Add ideas list"
git log --oneline
```

</details>

---

⬅️ [Back to the Day 3 lesson](./README.md)
