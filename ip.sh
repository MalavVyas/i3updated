#move this file to /usr/bin/, give permissions
#install jq and slack/slack-cli as requirement

#!/bin/bash
ip=$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -f2 -d ':')
echo $ip
slack chat send "$ip"  --channel="#general"
