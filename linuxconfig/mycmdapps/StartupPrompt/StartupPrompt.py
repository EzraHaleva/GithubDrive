import os, select, sys

class TimeoutExpired(Exception):
    pass

def input_with_timeout(prompt, timeout):
    sys.stdout.write(prompt)
    sys.stdout.flush()
    ready, _, _ = select.select([sys.stdin], [],[], timeout)
    if ready:
        return sys.stdin.readline().rstrip('\n') # expect stdin to be line-buffered
    raise TimeoutExpired

class environment:
    def __init__(self, name, command):
        self.name = name
        self.command = command

autostart = 1
if autostart :
    print("Starting default environment...")
    chooseEnv = 0
else:
    print("Welcome Ezra, press Enter to select an environment")
    try:
        timeout = 5
        key = input_with_timeout("", timeout)
        chooseEnv = 1
    except TimeoutExpired:
        print("Starting default environment...")
        chooseEnv = 0

#Load config file
configFilePath = "/home/ezra/GithubDrive/linuxconfig/mycmdapps/StartupPrompt/config"
configFile = open(configFilePath)
configFileLines = configFile.readlines()
environments = []
for line in configFileLines:
    if line[0] == '@': 
        environments.append(environment(line[1:],""))
    elif len(line) != 0:
        environments[len(environments)-1].command = line[0:len(line)-1]

#determine environment, through prompt or default
selection = 0;
if chooseEnv:
    print("Please select an environment.");
    i = 0
    for env in environments:
        print("[" + str(i) + "]-" + env.name[0:len(env.name)-1] )
        i += 1
    selection = input(":");

#Run selected environment command
os.system(environments[int(selection)].command)
