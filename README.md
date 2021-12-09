## git
 - 
```
git clone https://github.com/aditya995/flutterPractice.git
```

// Fetching the changes made in Remote repo. If Remote repo's current commit differs from current Local commit and the parent of both commits are same- then it needs to fetche from Remote repo first, then it can push current changes in local commit. First use git pull and then push current changes to Remote repo.
 - git pull
 - git config --global user.name **"User_name"**
 - git config --global user.email **"user_email"**
 - git status   // See what is added or modified in local Drive
 - git add .    // Staging to commit
 - git commit -m "msg title" -m "msg body"  // Saving the files Locally (in pc drives).
 - git push -u origin **branch_name** // Setting the default branch for `git push` command
 - git push    // `(pushes to default branch)`// If origin and branch is set through previous command!
 - git push --force  // If rejected `git push` for fast-forwards
 - git push origin **branch_name**  // `(manually)` // usually **`main`** (**`master` in previous versions**).

 

Connect to a remote github repo--
 - git remote   // to check if it is connected to github remote repository
 - git remote add origin https://github.com/aditya995/flutterPractice.git 
// To add the origin for this folder to push to that (remote) dartCodeVault repo in github.com

 - git branch   // Check the current branch
 - git checkout -b **branch_name**    //To create a new branch
 - git checkout **branch_name**   //To switch between branches
 - git merge **branch_name**  //To merge branches together
 - git branch -d **branch_name**  //To delete branch (might show **branch_name** is not fully merged). [ Safe delete ]
 - git branch -D **branch_name**  //To delete forcefully.

## Vs code shortcuts
 - open terminal `ctrl` + `
 - popup emoji `win` + `;`
 - Suggestion on error `ctrl` + `.`
 - Open Documentation: Hover over the element `ctrl` + `MouseClick`
 - Change current working file: `ctrl` + `TAB`

## Command Prompt shortcuts
 - Get file names from that directory in the terminal `tab` or `shift` + `tab`

## Important concepts
### Basics
 - create app, clone from git, Separate codes in multiple files, Use files, App name change, Icon change, debug mark removed from app tip right corner, scaffold, safearea, container
```
git checkout b_basic_layout
```
 - column, row
```
git checkout b_column_row
```
 - center, align, padding
```
git checkout b_center_align_padding
```
 - text
```
git checkout b_text
```
 - card 
```
git checkout b_
```
 - singleChildScrollView
```
git checkout b_
```
 - flex, spacer
```
git checkout b_
```
 - sixedbox, expanded, flexible
```
git checkout b_
```
 - image
```
git checkout b_
```
 - icon
```
git checkout b_
```
 - appbar
```
git checkout b_
```
### Buttons
 - iconButton
```
git checkout btn_
```
 - floatingActionButton
```
git checkout btn_
```
 - elevatedbutton
```
git checkout btn_
```
 - textButton
```
git checkout btn_
```
