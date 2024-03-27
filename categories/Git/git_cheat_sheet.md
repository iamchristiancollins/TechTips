# Git Cheat Sheet

Git is a distributed version control system that allows you to track changes in source code during software development. Here's a quick reference guide to some of the most commonly used Git commands.

## Setting Up Git

- **Configure your Git username and email** (important for being identified as the author of your contributions):

  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"

## Starting with Git

- **Initialize a new Git repository**:

  git init

- **Clone an existing repository**:

  git clone <repository-url>

## Basic Git Commands

- **Check the status of your files**:

  git status

- **Stage files to be committed**:

  git add <file-name>
  git add .  # Add all new and changed files to the staging area

- **Commit changes**:

  git commit -m "Commit message"

- **Push changes to the remote repository**:

  git push

- **Pull the latest changes from the remote repository**:

  git pull

## Branching

- **Create a new branch**:

  git branch <branch-name>

- **Switch to a different branch**:

  git checkout <branch-name>

- **Combine the specified branch's history into the current branch** (Merge):

  git merge <branch-name>

## Viewing Commit History

- **View the commit history**:

  git log

- **View changes**:

  git diff

## Undoing Changes

- **Revert unstaged changes**:

  git checkout -- <file-name>

- **Unstage changes (keep the changes in your working directory)**:

  git reset HEAD <file-name>

- **Revert a commit by creating a new commit with contrary changes**:

  git revert <commit-hash>

This cheat sheet covers the basics to get you started with Git. For more detailed information, consider checking the [official Git documentation](https://git-scm.com/doc).

*Contributed by: Christian Collins*