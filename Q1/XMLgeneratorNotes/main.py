# CSV to XML Converter
# Converts CSV files to XML format.
# Change Log:

import csv

csvFile = input("Enter file name to be converted (csvfiles/classeName.csv): ")
classeName = input("Enter file name to be converted: ")
xmlFile = 'xmlfiles/Notes_' + classeName + '.xml'

csvData = csv.reader(open(csvFile))
xmlData = open(xmlFile, 'w')
xmlData.write('<?xml version="1.0" encoding="utf-8" standalone="yes"?>' + "\n")
# there must be only one top-level tag
xmlData.write('<Notes>' + "\n")

rowNum = 0
for row in csvData:
    if rowNum == 0:
        tags = row
        for i in range(len(tags)):
            tags[i] = tags[i].replace('   ', '')
    else:
        xmlData.write('  <Note>' + "\n")
        for i in range(len(tags)):
            # replace ampersand with character entity.
            row[i] = row[i].replace('&', '&amp;')
            row[i] = row[i].replace('  ', '')
            xmlData.write('    <' + str(tags[i]) + '>' \
                          + str(row[i]) + '</' + str(tags[i]) + '>' + "\n")
        xmlData.write('  </Note>' + "\n")

    rowNum += 1

xmlData.write('</Notes>' + "\n")
xmlData.close()