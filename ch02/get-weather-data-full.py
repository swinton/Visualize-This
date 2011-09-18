import urllib2
from BeautifulSoup import BeautifulSoup
 
# Create/open a file called wunder.txt (which will be a comma-delimited file)
f = open('wunder-data.txt', 'w')
 
# Iterate through year, month, and day
for y in range(2009, 2010):
  for m in range(1, 13):
    for d in range(1, 32):
 
      # Check if leap year
      if y%400 == 0:
        leap = True
      elif y%100 == 0:
        leap = False
      elif y%4 == 0:
        leap = True
      else:
        leap = False
 
      # Check if already gone through month
      if (m == 2 and leap and d > 29):
        continue
      elif (m == 2 and d > 28):
        continue
      elif (m in [4, 6, 9, 10] and d > 30):
        continue
 
      # Open wunderground.com url
      url = "http://www.wunderground.com/history/airport/KBUF/"+str(y)+ "/" + str(m) + "/" + str(d) + "/DailyHistory.html"
      page = urllib2.urlopen(url)
 
      # Get temperature from page
      soup = BeautifulSoup(page)
      # dayTemp = soup.body.nobr.b.string
      dayTemp = soup.findAll(attrs={"class":"nobr"})[5].span.string
 
      # Format month for timestamp
      if len(str(m)) < 2:
        mStamp = '0' + str(m)
      else:
        mStamp = str(m)
 
      # Format day for timestamp
      if len(str(d)) < 2:
        dStamp = '0' + str(d)
      else:
        dStamp = str(d)
 
      # Build timestamp
      timestamp = str(y) + mStamp + dStamp
 
      # Write timestamp and temperature to file
      f.write(timestamp + ',' + dayTemp + '\n')
 
# Done getting data! Close file.
f.close()
