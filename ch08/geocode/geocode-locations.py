from geopy import geocoders
import csv

g_api_key = 'tP+4nIZQFHJDjWNipkhOMSpWr8y8Vpgm' #'INSERT_YOUR_API_KEY_HERE'
g = geocoders.Google(g_api_key)

costcos = csv.reader(open('costcos-limited.csv'), delimiter=',')
header_skipped = False
for row in costcos:
    if not header_skipped:
        header_skipped = True
        
        # Print header
        print "Address,City,State,Zip Code,Latitude,Longitude"
        continue
    
    full_addy = row[1] + "," + row[2] + "," + row[3] + "," + row[4]
    try:
        place, (lat, lng) = list(g.geocode(full_addy, exactly_one=False))[0]
        print full_addy + "," + str(lat) + "," + str(lng)
    except:
        print full_addy + ",NULL,NULL"