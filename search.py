# Add your desired search command to the aliases file; mine is here ~/.bash_aliases
# alias search='python /media/thumb/core-python/search.py '
# alias s='search '

import sys, os
argv="+".join(sys.argv[1:])
msg=" ".join(sys.argv[1:])
print "Searching for - " + msg
#Change this to your search of choice

browser='firefox'

os.system(browser+' https://www.google.com/search?q='+argv)
#os.system(browser+' https://duckduckgo.com/?q='+argv)
#os.system(browser+' http://www.bing.com/search?q='+argv)
