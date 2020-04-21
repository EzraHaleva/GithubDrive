cd ~/GithubDrive
git add *
git commit -m "$(date)"
git push origin master >> "shutdownPushLog.txt"

cd ~/Journal
git add *
git commit -m "$(date)"
git push origin master >> "shutdownPushLog.txt"

