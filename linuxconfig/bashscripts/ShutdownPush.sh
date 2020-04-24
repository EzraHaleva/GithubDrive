cd /home/ezra/GithubDrive
git add *
git commit -m "$(date)"
git push origin master >> "/home/ezra/GithubDrive/linuxconfig/bashscripts/ShutdownPushLog.txt"

cd ~/Journal
git add *
git commit -m "$(date)"
git push origin master >> "/home/ezra/GithubDrive/linuxconfig/bashscripts/ShutdownPushLog.txt"

