if "%~1"=="" (
    echo Need a parameter
    exit /b
)
git status
git add --all
git commit -m "%1"
git push origin master