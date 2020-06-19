#!/usr/bin/env python3

# import  
import csv
import os 
# read csv with ip addresses 
with open('servers.csv') as csvfile: 
	reader = csv.reader(csvfile, delimiter=',')
	# convert it to a list
	new_list = list(reader)
	# remove the first element in the list (Title of the excel)
	new_list.pop(0)
	output = ''
	# loop through csv list 
	for row in new_list:
		ip_addr = row[0]
		# ping each server 
		resp = os.system("ping " + ip_addr)
		if resp == 0:
			output += ip_addr + ', OK!\n'
		else:
			output += ip_addr + ', NOT Ok!\n'

# open csv for writing
with open('output.csv', 'w', newline='') as fd:
	fd.write(output)
