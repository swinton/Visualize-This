import csv

reader = csv.reader(open('wunder-data.txt', 'r'), delimiter=",")

print "{ observations: ["

rows_so_far = 0
for row in reader:
    
    rows_so_far += 1
    
    print '{' 
    print '"date": ' + '"' + row[0] + '", '
    print '"temperature": ' + row[1] 
    
    if rows_so_far < 365:
        print " },"
    else:
        print " }"
    
print "] }"