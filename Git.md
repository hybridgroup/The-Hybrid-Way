General Rules
=====================

* Do not commit code without green tests

* Your commit message should be explicit and consistent with your committing code

* Remember MEMO: Merge Early, Merge Often

Where's the Remote?
---------------------------

* Do not rewrite history on anything that has been pushed to a remote--even if it's not on the master branch.

In particular, I'm speaking about the `git commit --amend/--squash` and `git rebase` commands. People
might have already fetched it and maybe even merged it to another of their local branches. Those people
might not know commit X was supposed to have been changed somehow, and when they pull again, it'll
either be a broken commit or end up reverting whatever change was made.


Good Defaults
-------------------

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

## Workflow

When working on a task, make sure you create a branch for that task with the task name and make sure you mark that task as in-progress. The format should be task-#. E.g, task-500

`git checkout -b task-500`

When committing to that branch, make sure every commit has at least one complete sentence. You can provide more detail after the initial sentence with a linebreak. (optional) See this guide for more: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html  

When the task is completed create a pull request on Github. The title of the Pull Request should include the Task# and what the task is about. E.g, “Task 500: Standardizing GitHub”. Inside the content of the Pull Request, you should include some information on what you did. It’s also a good practice to link to the Task that the Pull Request is related to.

Once you’re done with creating the Pull Request on GitHub, be sure to move the Task to the Pull Request Queue, and to add a link to the GitHub Pull Request inside the Task comments.

I know this is not documented anywhere yet. But fear not! We're working on it.
We'll deliver some solid documentation for you guys to be able to follow a clear path.

For now, you can follow these simple steps:

Grab a task.
Mark it in-progress.
Create a branch.
Commit.
Pull-Request.
Rinse, and repeat.
