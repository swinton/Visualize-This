import csv

codereader = csv.reader(open('country-codes.txt', 'r'), delimiter="\t")
alpha3to2 = {}
i = 0; skipped_header = False
for row in codereader:
    if not skipped_header:
        skipped_header = True
        continue
    
    alpha3to2[row[1]] = row[0]


waterreader = csv.reader(open('water-source1.txt', 'r'), delimiter="\t")
# popreader = csv.reader(open('urbanpopulation1.txt', 'r'), delimiter="\t")
# popreader = csv.reader(open('urbanpopulation-prop.txt', 'r'), delimiter="\t")
i = 0
for row in waterreader:
    if i == 0:
        # Skip header
        i += 1
        continue

    # Urban population (change)
    # if row[1] in alpha3to2 and row[7]:
    #     alpha2 = alpha3to2[row[1]].lower()
    #     pct = float(row[7])
    #     if pct > 25:
    #         fill = "#08589E"
    #     elif pct > 20:
    #         fill = "#2B8CBE"
    #     elif pct > 15:
    #         fill = "#4EB3D3"
    #     elif pct > 10:
    #         fill = "#7BCCC4"
    #     elif pct > 5:
    #         fill = "#A8DDB5"
    #     elif pct > 0:    
    #         fill = "#CCEBC5"
    #     elif pct == -999999:
    #         pass
    #     else:  
    #         fill = "#F0F9E8"    
    #     print '.' + alpha2 + ' { fill: ' + fill + ' }'
    
    # Urban population proportion (2005 or 2009)
    # if row[1] in alpha3to2 and row[10]:
    #     alpha2 = alpha3to2[row[1]].lower()
    #     pct = float(row[10])
    #     if pct > .85:
    #         fill = "#08589E"
    #     elif pct > .70:
    #         fill = "#2B8CBE"
    #     elif pct > .55:
    #         fill = "#4EB3D3"
    #     elif pct > .40:
    #         fill = "#7BCCC4"
    #     elif pct > .25:
    #         fill = "#A8DDB5"
    #     elif pct > .10:    
    #         fill = "#CCEBC5"
    #     elif pct == -999999:
    #         pass
    #     else:  
    #         fill = "#F0F9E8"    
    #     print '.' + alpha2 + ' { fill: ' + fill + ' }'
    
    
    # Water    
    if row[1] in alpha3to2 and row[6]:
        alpha2 = alpha3to2[row[1]].lower()
        pct = int(row[6])
        if pct == 100:
            fill = "#08589E"
        elif pct > 90:
            fill = "#2B8CBE"
        elif pct > 80:
            fill = "#4EB3D3"
        elif pct > 70:
            fill = "#7BCCC4"
        elif pct > 60:
            fill = "#A8DDB5"
        elif pct > 50:    
            fill = "#CCEBC5"
        else:
            fill = "#F0F9E8"    
        print '.' + alpha2 + ' { fill: ' + fill + ' }'
    
    i += 1
    
