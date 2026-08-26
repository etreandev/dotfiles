function git-add-worktree --description 'Prepares a new worktree environment'

    set -f REPO_ROOT $(get-repo-root)
    set -f NEW_WORKTREE_PATH $REPO_ROOT/.worktrees/$argv[1]

    git worktree add $NEW_WORKTREE_PATH $argv[2..-1]

    if test -e $REPO_ROOT/.venv/ 2>/dev/null
        ln -s $REPO_ROOT/.venv/ $NEW_WORKTREE_PATH/.venv
    end

    z $NEW_WORKTREE_PATH
end
