How does tracking and adding changes make developers' lives easier?

Tracking and adding changes ensures that there is always a clean version of the code to return to should something get messy.  Tracking the changes makes it simple to review what changes were made when via git log.

What is a commit?

A commit is a snapshot of the work as it exists in the moment.  It is a way to save your code as is so you can revert to this version if needed.

What are the best practices for commit messages?

Commit mesages are written in the imperative (e.g. "Add changes" vs. "Adding" or "Added").  They are 50 characters or less, ideally, and read like the subject line of an email: brief and informative.

What does the HEAD^ argument mean?

HEAD^ is the last commit that you made (HEAD is the commit you are on, and you can use HEAD-3, HEAD-4 and so on to count back from HEAD).

What are the 3 stages of a git change and how do you move a file from one stage to the other?

If I understand this question correctly, if you're going to make a change, you should create a branch to work on while doing so.  Then, you make your changes.  Finally, you comit those changes.

Write a handy cheatsheet of the commands you need to commit your changes?

git init initiates the repository

git add <filename> adds the file you've
changed and moves it to the staging area

git commit -m "[commit message here]" commits the files that were staged

What is a pull request and how do you create and merge one?

A pull request is a way to let collaborators know you've pushed changes to a repository so they can check out your work and decide whether or not to merge it.

You create a pull request by pushing changes to a repository, then click on the "Pull Request" button on the right side of the header.  You need to make sure you have the settings correct so that you merge to the proper branch (for this assignment we wanted to merge our making-changes branch to the master branch of our forked phase0-week-1 repo).

Once you're set up, hit the "Merge" button and then delete the branch you were working on to keep the repo clean.

Why are pull requests preferred when working with teams?

Pull requests give collaborators a chance to check out your code, make edits if needed, and then approve the merge with the master branch.  This way, only good code will get merged.