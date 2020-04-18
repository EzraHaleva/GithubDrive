import os
import shutil
#TODO List
# - find way to check if a directory exists
# - use above to put entry in appropriate directory, detecting if it doesn't existing and making it if thats so
# - Fix any final formatting preferences

class Date:
    def __init__(self, month = "defaultMonth", day = "defaultDay", year = "defaultYear"):
        self.month = month
        self.day = day
        self.year = year

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October","November", "December"]

def numOfMonth(inpMonth):
    for i in range (0, 12):
        if(inpMonth == months[i]):
            return i+1

def niceDayOfMonth(dayOfMonth):
    onesDigit = int(dayOfMonth) % 10
    if(dayOfMonth == "11" or dayOfMonth == "12" or dayOfMonth == "13"):
        return str(dayOfMonth) + "th"
    if(onesDigit == 1):
        return str(dayOfMonth) + "st"
    elif(onesDigit == 2):
        return str(dayOfMonth) + "nd"
    elif(onesDigit == 3):
        return str(dayOfMonth) + "rd"
    else:
        return str(dayOfMonth) + "th"

def determineDate(heading):
    heading = heading.lower()
    outputYear = "defaultYear"
    outputMonth = "defualtMonth"
    outputDay = "defaultDay"
    years = ["2018", "2017", "2019", "2020"]
    for year in years:
        if year in heading:
            outputYear = year

    for month in months:
        if month.lower() in heading:
            outputMonth = month
            dayIndex = heading.index(month.lower()) + len(month) +1
            for i in range(10, 32):
                if heading[dayIndex:dayIndex+2] == str(i):
                    outputDay = str(i)
            if outputDay == "defaultDay":
                for i in range(1, 10):
                    if heading[dayIndex:dayIndex + 1] == str(i):
                        outputDay = str(i)

    outputDate = Date(outputMonth, outputDay, outputYear)
    return outputDate

inputFile = open("../Assets/EditedJournal.txt", "r")


rootDirectory = "../Assets/TestParseDumpitory/"
shutil.rmtree(rootDirectory)
os.mkdir(rootDirectory)
fileLines = inputFile.readlines()
print(len(fileLines))
entryCount = 0
fileName = ""
currentDir = "DefaultFolder/"
for line in fileLines:
    if "#" in line:
        entryCount += 1
        fileHeading = line[1:]
        fileDate = determineDate(fileHeading)
        currentDir = rootDirectory + fileDate.year + "/" + str(numOfMonth(fileDate.month)) + "-" + fileDate.month + "/"
        if not os.path.isdir(currentDir):
            os.makedirs(currentDir)

        fileName = fileDate.year + "-" + str(numOfMonth(fileDate.month)) + "-" + fileDate.day + ".txt"
        outputFile = open(currentDir + fileName, "w")
        outputFile.write(fileDate.month + " " + niceDayOfMonth(fileDate.day) + ", " + fileDate.year + "\n\n")
    elif fileName != "" :
        editedLine = line.replace("’", "'")
        #editedLine = editedLine.replace(")", "\)")

        outputFile.write(editedLine)

print(entryCount)



