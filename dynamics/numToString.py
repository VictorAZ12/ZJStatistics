# Convert the dynamic post IDs to strings (for exact JS processing)
import json

# Example JSON array
with open('result.json', 'r', encoding='UTF-8') as f:

    lines = f.readlines()
    data = lines[1:len(lines)-2]

# Convert the first property ("dynamic_id") to string
for i, line in enumerate(data):
    for j in range(0, len(line)):
        if line[j] == ':':
            firstColon = j
            break
    firstSec = line[:firstColon+2]
    for j in range(firstColon, len(line)):
        if line[j] == ',':
            firstComma = j
            break
    secondSec = "'" + line[firstColon+2:firstComma] + "'"
    thirdSec = line[firstComma:]
    data[i] = firstSec + secondSec + thirdSec
    # Fix double commas formatting issues
    data[i] = data[i].replace(",,", ",")
with open('output.txt', 'w', encoding='UTF-8') as f:
    f.writelines(data)
