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
