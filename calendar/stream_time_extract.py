import re
import csv
import os
years = []
# Read in HTML files of 2 folder pages
# See https://alist.ddindexs.com/
with open("./calendar/anni1.html", "r", encoding="UTF-8") as f:
    years.append(f.read())
with open("./calendar/anni2.html", "r", encoding="UTF-8") as f:
    years.append(f.read())
# initialise pattern and output
titles = []
pattern = r"""title=".*?\.mp4\"*"""

row_list = []
# find all titles and extract rows
for year in years:
    for i, title in enumerate(re.findall(pattern, year)):
        row = [title[18:-5].replace("&amp;", "&"), title[7:17].replace('.','/')]
        print(row)
        row_list.append(row)

with open("./calendar/calendar.csv", 'w', encoding="UTF-8", newline='') as csvfile:
    writer = csv.writer(csvfile)
    # Column names
    writer.writerow(["Title", "Date"])
    for row in row_list:
        writer.writerow(row)