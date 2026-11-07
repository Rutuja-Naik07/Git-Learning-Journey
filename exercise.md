# 🏋️ Day 4 Exercise: Label Your Boxes

**Time:** about 15 minutes  |  **Goal:** make 3 commits with clear, well-written messages.

## Part 1: Fix the labels (no terminal needed)

Rewrite each bad message so it passes the test *"If applied, this commit will ______."*

| ❌ Bad message | ✍️ Your better version |
|----------------|------------------------|
| `stuff` | |
| `fix` | |
| `asdfgh` | |
| `final changes!!!` | |
| `Added login button, fixed bug, updated docs and changed colors` | *(split it into how many commits?)* |

## Part 2: Practice in the terminal

1. Create a new repo: `git init -b main label-lab` and go inside it.
2. Create three files: `books.txt`, `movies.txt`, `goals.txt`, each with one line.
3. Stage **only** `books.txt` and commit it with a clear message.
4. Stage `movies.txt` and `goals.txt` **together** with one `git add` command and commit them.
5. Add one more line to `books.txt`, run `git status`, then use `git add .` and commit with a **summary and a body** (two `-m` flags).
6. Run `git log --oneline` and read your history like a story.

## ✅ Checklist

- [ ] Every summary is under 50 characters
- [ ] Every summary starts with a verb
- [ ] No summary ends with a full stop
- [ ] I ran `git status` before using `git add .`
- [ ] `git log --oneline` shows 3 clear commits

## ⭐ Bonus quests

- **Add a type:** redo one commit with a prefix, like `docs: Add books list`.
- **Peek at the body:** run `git log -1` and find your longer note.
- **Post your progress:** share your `git log --oneline` with the tag `#GitQuest`.

## 🧠 Quick quiz

1. Which is better: `Added menu` or `Add menu`?
2. What does `git add .` do?
3. How many changes should one commit contain?

<details>
<summary>👀 Click to see the answers</summary>

**Part 1 examples** (yours may differ!)
- `stuff` → `Add menu with three dishes`
- `fix` → `Fix typo in menu title`
- `asdfgh` → `Add notes file`
- `final changes!!!` → `Update todo list with deadlines`
- The long message → three commits: `Add login button`, `Fix signup bug`, `Update docs`

**Quiz**
1. `Add menu`. Commit messages use the imperative mood, as if giving a command.
2. It stages every change in the current folder.
3. One logical change.

</details>

<details>
<summary>🆘 Stuck? Click for the full solution</summary>

```bash
git init -b main label-lab
cd label-lab
echo "Dune" > books.txt
echo "Inception" > movies.txt
echo "Read more" > goals.txt
git add books.txt
git commit -m "Add books list"
git add movies.txt goals.txt
git commit -m "Add movies and goals lists"
echo "Emma" >> books.txt
git status
git add .
git commit -m "Update books list" -m "Added Emma to the reading list."
git log --oneline
```

</details>

---

⬅️ [Back to the Day 4 lesson](./lesson.md)
