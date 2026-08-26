function get-repo-root \
    --description "Get the location of the current repository's top level"
    git rev-parse --show-toplevel 2>/dev/null

end
