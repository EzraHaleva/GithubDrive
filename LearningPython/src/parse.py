import os
import shutil

class Date:
    def __init__(self, month = "defaultMonth", day = "defaultDay", year = "defaultYear"):
        self.month = month
        self.day = day
        self.year = year

def determineDate(heading):
    heading = heading.lower()
    outputYear = "defaultYear"
    outputMonth = "defualtMonth"
    outputDate = "defaultDay"
    years = ["2018", "2017", "2019", "2020"]
    months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "nov", "dec", "december"]
    for year in years:
        if year in heading:
            outputYear = year
    for month in months:
        if month in heading:
            outputMonth = month
    for i in range(1,31):
        if str(i) in heading:
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
for line in fileLines:
    if "#" in line:
        entryCount += 1
        fileHeading = line[1:]
        fileDate = determineDate(fileHeading)
        fileName = fileDate.month + "_" + fileDate.day + "_" + fileDate.year
        outputFile = open(rootDirectory + str(entryCount) + "-" + fileName, "w")
        outputFile.write(fileName)
    elif fileName != "" :
        outputFile.write(line)

print(entryCount)



