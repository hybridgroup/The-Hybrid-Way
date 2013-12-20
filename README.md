# The Hybrid Way

This is the way we do things at the Hybrid Group.
It's not the best of the best, but it's the best for us and has worked well.

## Colaborate

* To colaborate create issues or pull requests.

## Git

### General Rules

* Do not commit code without green tests
* Your commit message should be explicit and consistent with your committing code

### Where's the Remote?

* Do not rewrite history on anything that has been pushed to a remote--even if it's not on the master branch.

In particular, don't use the `git commit --amend/--squash` and `git rebase` commands. People
might have already fetched it and maybe even merged it to another of their local branches. Those people
might not know commit X was supposed to have been changed somehow, and when they pull again, it'll
either be a broken commit or end up reverting whatever change was made.

### Good Defaults

* Default entries for .gitignore

        *.DS_Store
        *~
        .rvmrc
        .bundle
        Session.vim
        *.swp

* Default entries for .gitignore for Rails

        config/database.yml
        log/
        tmp/
        coverage/
        db/*.db
        db/*.sqlite3
        public/system/

### Workflow

#### Starting a Feature

To work on a new feature, create a new branch off the current master branch with task number and description.

e.g. `10-correct-portal-links` or `20-rock-the-house`

Write your code, and make sure your commits to the feature branch are atomic.

#### Delivering a Feature

When finished work on a feature branch:

- Open a Pull Request from the feature branch against the current master branch
- Have someone else do a code review and make sure the tests/features pass
- Assuming everything's passing, reviewer can merge the PR into the master branch
- Once the pull request has been accepted and merged, branch is deleted.

#### You can follow these simple steps:

1. Grab a task.
1. Mark it in-progress.
1. Create a branch.
1. Commit.
1. Pull-Request.
1. Rinse, and repeat.

## Ruby

We try to follow this community [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).

RuboCop is a Ruby static code analyzer that will enforce many of the guidelines outlined

Visit rubocop webpage for install and usage options: https://github.com/bbatsov/rubocop

## Rails

We try to follow this community [Rails Style Guide](https://github.com/bbatsov/rails-style-guide).

## FrontEnd

We believe we can have a #betterfrontend so we follow this guides:
[Betterfrontend Guides](http://betterfrontend.com/guides)
