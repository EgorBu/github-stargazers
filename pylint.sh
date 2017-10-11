
touched_python_files=`git diff --name-only |egrep '\.py$' || true`

if [ -n "$touched_python_files" ]; then
    pipenv run pylint $touched_python_files
fi

