function activate-venv-on-pwd-change \
    --on-variable PWD \
    --description "Activates the python virtual environment if there is one at the top of the repo. Expected virtual environment name: `venv`."

    set -l REPO_ROOT $(git rev-parse --show-toplevel 2> /dev/null)

    if test -n "$REPO_ROOT"; and test -e "$REPO_ROOT/.venv/bin/activate.fish"
        source "$REPO_ROOT/.venv/bin/activate.fish"
    else if set -q VIRTUAL_ENV
        deactivate
    end
end
