function git-remove-worktree --description 'Removes targeted worktree and its associated branch'
    if test (count $argv) -lt 1
        echo "Usage: git-remove-worktree <worktree-name>" >&2
        return 1
    end

    set -f REPO_ROOT (get-repo-root)
    set -f WORKTREE_PATH $REPO_ROOT/.worktrees/$argv[1]

    if not test -d $WORKTREE_PATH
        echo "Worktree not found: $WORKTREE_PATH" >&2
        return 1
    end

    # Detect the branch checked out in this worktree
    set -f BRANCH (git -C $WORKTREE_PATH rev-parse --abbrev-ref HEAD 2>/dev/null)

    git worktree remove $WORKTREE_PATH $argv[2..-1]
    or return $status

    if test -n "$BRANCH" -a "$BRANCH" != HEAD
        echo "Deleting branch: $BRANCH"
        git branch -D $BRANCH
    end
end
