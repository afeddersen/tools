from termcolor import colored

def lines():
    l = '-' * 50
    print colored(l, 'red')

gae_section = '********** AppEngine Development Server Section **********'

git_section = '********** Git Section **********'

intro = """
       _                _
   ___| |__   ___  __ _| |_
  / __| '_ \ / _ \/ _` | __|
 | (__| | | |  __| (_| | |_
  \___|_| |_|\___|\__,_|\__|
"""

a = '1. To start a basic development server with log level warning:'

b = '$ dev_appserver.py --log_level=warning app.yaml'

c = '2. To clear the datastore and start a development server:'

d = '$ dev_appserver.py --clear_datastore=yes --log_level warning app.yaml'

e = '3. To specify the port and admin port (required for running multiple instances):'

f = '$ dev_appserver.py --port=8081 --admin_port=8001 --log_level warning app.yaml'

g = '4. Logging options:'

h = '--log_level {debug,info,warning,critical,error}'

i = '1. To replace local Git client with remote (typically HEAD)'

j = '$ git reset --hard origin/master'

lines()
print colored(intro, 'red')
print
print colored(gae_section, 'red')
print
print colored(a, 'blue')
print
print colored(b, 'green')
print
print colored(c, 'blue')
print
print colored(d, 'green')
print
print colored(e, 'blue')
print
print colored(f, 'green')
print
print colored(g, 'blue')
print
print colored(h, 'green')
print
print colored(git_section, 'red')
print
print colored(i, 'blue')
print
print colored(j, 'green')
print
print
lines()
